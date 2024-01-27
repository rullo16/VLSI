from utils.types_SMT import Solution, CorrectSolution, StatusEnum


CORRECT_MSG="Solution found, but not optimal"
OPTIMAL_MSG ="Optimal solution found"
NO_SOLUTION_MSG = "No solution found"
GENERIC_MSG = "Solution unacceptable"
ERROR_MSG = "Error"
SMT_MSG = "SMT solution found"

def print_log(solution: Solution):
    
    if solution.status == StatusEnum.FEASIBLE:
        print(f"{CORRECT_MSG}")
    elif solution.status == StatusEnum.OPTIMAL:
        print(f"{OPTIMAL_MSG}")
    elif solution.status == StatusEnum.NO_SOLUTION:
        print(f"{NO_SOLUTION_MSG}")
    elif solution.status == StatusEnum.ERROR:
        print(f"{ERROR_MSG}")
    else:
        print(f"{GENERIC_MSG}")

    if CorrectSolution(solution.status):
        print(f"Solved {solution.input_name} in {solution.solve_time:.2f} ms")
        print(f"Width: {solution.width}")
        print(f"Height: {solution.height}")
        for i in range(solution.n_circuits):
            print(
                (
                    f"{solution.circuits[i][1] if solution.rotation and solution.rotation[i] else solution.circuits[i][0]} \
                        {solution.circuits[i][0] if solution.rotation and solution.rotation[i] else solution.circuits[i][1]}, "
                    f"{solution.coords['pos_x'][i]} {solution.coords['pos_y'][i]}"
                )
            )

def save_solution(out_path, model, file_name, data):
    file_name = file_name.replace(".dzn", ".txt")
    out_file = out_path.format(model=model, file=file_name)
    
    w = data.width
    l = data.height
    n = data.n_circuits
    x = [data.circuits[i][0] for i in range(n)]
    y = [data.circuits[i][1] for i in range(n)]
    pos_x = data.coords["pos_x"] if hasattr(data, "coords") else [-1 for i in range(n)]
    pos_y = data.coords["pos_y"] if hasattr(data, "coords") else [-1 for i in range(n)]

    if len(pos_x) != n or len(pos_y) != n:
        pos_x = [-1 for i in range(n)]
        pos_y = [-1 for i in range(n)]
    lines = [f"{x[i]} {y[i]} {pos_x[i]} {pos_y[i]} \n" for i in range(n)]
    with open(out_file, "w+") as f:
        f.writelines([f"{w} {l}\n", f"{n}\n"])
        f.writelines(lines)
    

    
