import sys
sys.path.append('../../')
sys.path.append('./')
from datetime import timedelta
#from utils.logs import Solution
from utils.types import CorrectSolution, SolverMinizinc, ModelType, StatusEnum, Solution
from minizinc import Instance, Model, Solver, Result, Status, MiniZincError

def minizinc_solve_time(result: Result):
    if "initTime" in result.statistics:
        init_time = result.statistics["initTime"].total_seconds()
    elif "flatTime" in result.statistics:
        init_time = result.statistics["flatTime"].total_seconds()
    else:
        init_time = 0
    return result.statistics["solveTime"].total_seconds() + init_time

def get_minizinc_result(result: Result, instance:Instance, solution: Solution):
    # Get the status of the result
    solution.height = result.objective
    # inputs
    solution.circuits = instance.__getitem__("CIRCUITS")
    solution.n_circuits = instance.__getitem__("N")
    solution.width = instance.__getitem__("W")

    if hasattr(result.solution, "coord_x") and hasattr(result.solution, "coord_y"):
        solution.coords = {
            "x": result.solution.coord_x,
            "y": result.solution.coord_y
        }
    
    solution.rotation = None if not hasattr(result.solution, "rot") else result.solution.rot
    solution.solve_time = minizinc_solve_time(result)
    return solution

def solve(input_name, model_type, solver: SolverMinizinc=SolverMinizinc.GECODE, timeout=None, free_search=False, heigth=None):

    input_file = f'../instances/ins-{input_name}.dzn'
    model_file = f'./base.mzn' if model_type == ModelType.BASE else f'./rotation.mzn'

    if heigth is not None:
        model = Model()
        model.add_string(f'int: l_bound )= {heigth};')
        model.add_file(model_file)
    else:
        model = Model(model_file)

    solver = Solver.lookup(solver.value)
    instance = Instance(solver, model)

    instance.add_file(input_file, parse_data=True)
    if timeout:
        td_timeout = timedelta(seconds=timeout)
    else:
        td_timeout = None

    try:
        result = instance.solve(timeout=td_timeout, free_search=free_search)

    except MiniZincError as err:
        print(f"Error: {err}")
        solution = Solution()
        solution.status = StatusEnum.ERROR
        solution.input_name = input_name
        return solution
    
    solution = Solution()
    solution.input_name = input_name
    solution.solve_time = timeout

    if result.status == Status.SATISFIED:
        solution.status = StatusEnum.FEASIBLE
    if result.status == Status.OPTIMAL_SOLUTION:
        solution.status = StatusEnum.OPTIMAL
    if result.status == Status.UNSATISFIABLE:
        solution.status = StatusEnum.INFEASIBLE
    if result.status == Status.UNKNOWN:
        solution.status = StatusEnum.NO_SOLUTION
    if result.status == Status.ERROR:
        solution.status = StatusEnum.ERROR
    if result.status == Status.UNBOUNDED:
        solution.status = StatusEnum.UNBOUNDED
    else:
        raise BaseException("Unknown status")
    
    if CorrectSolution(solution.status):
        solution = get_minizinc_result(result, instance, solution)
    else:
        return solution

def main():
    input_file = '1'

    solve(input_file, ModelType.BASE, SolverMinizinc.CHUFFED, timeout=300, free_search=False)

if __name__ == '__main__':
    main()
