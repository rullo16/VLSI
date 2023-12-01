from utils.types import Solution, CorrectSolution, StatusEnum

out = "{root}/logs/{model}/{name}.log"

CORRECT_MSG="Solution found, but not optimal"
OPTIMAL_MSG ="Optimal solution found"
NO_SOLUTION_MSG = "No solution found"
GENERIC_MSG = "Solution unacceptable"
ERROR_MSG = "Error"

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
                    f"{solution.coords['x'][i]} {solution.coords['y'][i]}"
                )
            )


    

    
