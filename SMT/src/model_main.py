import os
import time
import math
import sys
sys.path.append('../..')
from pysmt.shortcuts import LT, Int, Solver, Equals
from pysmt.exceptions import SolverReturnedUnknownResultError
from pysmt.smtlib.parser import SmtLibParser
from utils.types_SMT import Solution, StatusEnum, SolverSMT, ModelType
import model_rotation

def parse_args(data, model_type):

    sort_key = lambda x: int(x[0][7:])
    sort_key_rot = lambda x: int(x[0][3:])

    pairs = dict([(str(m[0]), str(m[1])) for m in data])
    pos_x = sorted([(n,v) for n,v in pairs.items() if n.startswith("pos_x")])
    pos_y = sorted([(n,v) for n,v in pairs.items() if n.startswith("pos_y")])
    rot = sorted([(n,v) for n,v in pairs.items() if n.startswith("rot")]) if model_type == ModelType.ROTATION else None
    l = int(pairs['l'])
    pos_x = [val[1] for val in pos_x]
    pos_y = [val[1] for val in pos_y]
    rot = [True if val[1] == "True" else False for val in rot] if rot else None
    return l, pos_x, pos_y, rot



def open_data(filename):
    # Read instance data from a file
    with open(filename, 'r') as in_file:
        lines = in_file.read().splitlines()

        # Extract data from the file
        w = int(lines[0])
        n = int(lines[1])
        x = [int(line.split(' ')[0]) for line in lines[2:2+n]]
        y = [int(line.split(' ')[1]) for line in lines[2:2+n]]

        return w, n, x, y

def write_output(w, n, x, y, pos_x, pos_y, length, output_file, elapsed_time, rot,status):
    # Write the solution
    solution = Solution()
    solution.input_name = output_file
    solution.width = w
    solution.n_circuits = n
    solution.circuits = [[x[i], y[i]] for i in range(n)]
    solution.height = length
    solution.solve_time = elapsed_time
    solution.rotation = rot
    solution.coords = {"pos_x": pos_x, "pos_y": pos_y}
    solution.status = status
    
    return solution

def build_model(W, N, x, y, logic="LIA"):
    # Lower and upper bounds for the height
    l_low = max(max(y), math.ceil(sum([x[i]*y[i] for i in range(N)]) / W))
    l_up = sum(y)
    lines = []

    # Options
    lines.append(f"(set-logic {logic})")

    # Variables declaration
    lines += [f"(declare-fun pos_x{i} () Int)" for i in range(N)]
    lines += [f"(declare-fun pos_y{i} () Int)" for i in range(N)]
    lines.append("(declare-fun l () Int)")

    # Domain of variables
    lines += [f"(assert (and (>= pos_x{i} 0) (<= pos_x{i} {W-min(x)})))" for i in range(N)]
    lines += [f"(assert (and (>= pos_y{i} 0) (<= pos_y{i} {l_up-min(y)})))" for i in range(N)]
    lines.append(f"(assert (and (>= l {l_low}) (<= l {l_up})))")


    # Non-Overlap constraints, at least one needs to be satisfied
    for i in range(N):
        for j in range(N):
            if i < j:
                lines.append(f"(assert (or (<= (+ pos_x{i} {x[i]}) pos_x{j}) "
                                         f"(<= (+ pos_y{i} {y[i]}) pos_y{j}) "
                                         f"(>= (- pos_x{i} {x[j]}) pos_x{j}) "
                                         f"(>= (- pos_y{i} {y[j]}) pos_y{j})))"
                )

    # Boundary constraints
    lines += [f"(assert (and (<= (+ pos_x{i} {x[i]}) {W}) (<= (+ pos_y{i} {y[i]}) l)))" for i in range(N)]
    
    # Cumulative constraints 
    for w in x:
        sum_var = [f"(ite (and (<= pos_y{i} {w}) (< {w} (+ pos_y{i} {y[i]}))) {x[i]} 0)" for i in range(N)]
        lines.append(f"(assert (<= (+ {' '.join(sum_var)}) {W}))")

    for h in y:
        sum_var = [f"(ite (and (<= pos_x{i} {h}) (< {h} (+ pos_x{i} {x[i]}))) {y[i]} 0)" for i in range(N)]
        lines.append(f"(assert (<= (+ {' '.join(sum_var)}) l))")

    # Symmetry breaking same size 
    for i in range(N):
        for j in range(N):
            if i < j:
                lines.append(f"(assert (ite (and (= {x[i]} {x[j]}) (= {y[i]} {y[j]}))"
                                        f" (and (<= pos_x{i} pos_x{j}) (<= pos_y{i} pos_y{j})) true))")    

    # Symmetry breaking that inserts the circuit with the maximum area in (0, 0)
    areas = [x[i]*y[i] for i in range(N)]
    max_area_ind = areas.index(max(areas))
    lines.append(f"(assert (= pos_x{max_area_ind} 0))")
    lines.append(f"(assert (= pos_y{max_area_ind} 0))")

    lines.append("(check-sat)")
    for i in range(N):
        lines.append(f"(get-value (pos_x{i}))")
        lines.append(f"(get-value (pos_y{i}))")
    lines.append("(get-value (l))")
    
    with open(f"./model.smt2", "w+") as f:
        for line in lines:
            f.write(line + '\n')

    return l_low, l_up

def solve(solver, model_type):
    solution = {'solution': {}, 'l_var': None}

    res = solver.solve()
    if not res:
        print("Unsat, search interrupted")
        return None

    last_model = solver.get_model()
    var_list = [v[0] for v in last_model]
    l_ind = [str(v) for v in var_list].index('l')
    l_var = var_list[l_ind]
    l, pos_x, pos_y, rot = last_model[l_ind], [], [], []

    solution['solution'] = {'l': l, 'pos_x': pos_x, 'pos_y': pos_y, 'rot': rot}
    solution['l_var'] = l_var

    return solution

def low_bound_search(solver, l_lower, parser, model_filename, model_type, timeout):
    symb = parser.get_script_fname(model_filename).get_declared_symbols()
    ind_l = [str(v) for v in symb].index('l')
    l_var = list(symb)[ind_l]
    l_tmp = l_lower
    solution = {}

    solver.push()
    solver.add_assertion(Equals(l_var, Int(l_tmp)))
    start_time = time.perf_counter()
    try:
        while not solver.solve():
            l_tmp = l_lower + 1
            solver.pop()
            solver.push()
            solver.add_assertion(Equals(l_var, Int(l_tmp)))
        end_time = time.perf_counter()
    except SolverReturnedUnknownResultError:
        print("Solver returned unknown result")
        return solution, timeout
    
    model = solver.get_model()
    l, pos_x, pos_y, rot = parse_args(model, model_type)
    solution = {'l': l, 'pos_x': pos_x, 'pos_y': pos_y, 'rot': rot}
    return solution, (end_time - start_time)

def offline_omt(solver, l_lower, l_upper, model_type, timeout):
    lower, upper = l_lower, l_upper
    l_tmp = upper
    l_backup = None
    optimal_sol = {}

    start = time.perf_counter()
    i = 0

    while lower < upper:
        up_backup = l_tmp
        l_tmp = (lower + upper) // 2

        if i > 0:
            check_time = time.perf_counter()
            remained_time = int(timeout * 1000 - (check_time - start) * 1000)
            if remained_time <= 0:
                print("Timeout")
                return optimal_sol, timeout

        current_l = optimal_sol['l'] if 'l' in optimal_sol else l_upper
        try:
            current_sol = solve(solver, model_type)
        except SolverReturnedUnknownResultError:
            print("Solver returned unknown result")
            return optimal_sol, timeout

        if current_sol is not None:
            if current_sol['solution']['l'] < current_l:
                optimal_sol = current_sol['solution']
            print("Found solution with l = ", current_sol['solution']['l'])
            l_var = current_sol['l_var']
            l_backup = l_var
            upper = l_tmp
            print("Add constraint l < ", upper)
            if i > 0:
                solver.pop()
            solver.push()
            solver.add_assertion(LT(l_var, Int(upper)))
        else:
            lower = l_tmp + 1
            upper = up_backup
            solver.pop()
            solver.push()
            solver.add_assertion(LT(l_backup, Int(upper)))
            print("No solution found")
        i += 1
    end = time.perf_counter()
    return optimal_sol, (end - start)

def solver(input_file, solver_name, model_type=ModelType.BASE, search_method="lbound", timeout=300):
    instance_name = os.path.splitext(os.path.basename(input_file))[0]

    # Load instance data using the open_data function
    w, n, x, y = open_data(input_file)

    # Create model
    if model_type == ModelType.ROTATION:
        path_model = './model_rot.smt2'
        l_lower, l_upper = model_rotation.build_model(w, n, x, y)
    else:
        path_model = './model.smt2'
        l_lower, l_upper = build_model(w, n, x, y)

    # Create solver
    if solver_name == SolverSMT.CVC4.value:
        solver_options = {'tlimit': timeout*1000}
    else:
        solver_options = {'timeout': timeout * 1000, 'auto_config': True}
    solver = Solver(name=solver_name, solver_options=solver_options)
    parser = SmtLibParser()
    formula = parser.get_script_fname(path_model).get_strict_formula()

    solver.add_assertion(formula)
    if search_method == "lbound":
        solution,time = low_bound_search(solver, l_lower, parser, path_model,model_type, timeout)
    else:
        solution = offline_omt(solver, l_lower, l_upper, model_type, timeout)

    if len(solution.keys()) != 0:
        l, pos_x, pos_y, rot = solution['l'], solution['pos_x'], solution['pos_y'], solution['rot']
        return write_output(w, n, x, y, pos_x, pos_y, l, instance_name, time, rot, StatusEnum.OPTIMAL)
    else:
        print("No solution found")
        return None
    
def main():
    input_file = "../../data/instances/ins-1.txt"
    solver(input_file)

if __name__ == '__main__':
    main()