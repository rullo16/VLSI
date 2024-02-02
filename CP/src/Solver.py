import os
from os.path import exists
import sys
import logging
sys.path.append('../..')
from datetime import timedelta
#from utils.logs import Solution
from utils.CP_class import CorrectSolution, MznSolver, ModelType, Status_CP, Solution
from minizinc import Instance, Model, Solver, Result, Status, MiniZincError

def minizinc_solve_time(result: Result):
    if "initTime" in result.statistics:
        init_time = result.statistics["initTime"].total_seconds()
    elif "flatTime" in result.statistics:
        init_time = result.statistics["flatTime"].total_seconds()
    else:
        init_time = 0
    return result.statistics["solveTime"].total_seconds() + init_time

def get_minizinc_result(result: Result, instance:Instance, solution: Solution)->Solution:
    
    # Get the status of the result
    solution.height = result.objective

    # inputs
    solution.circuits = instance.__getitem__("circuits")
    solution.num_circuits = instance.__getitem__("n")
    solution.width = instance.__getitem__("w")

    if hasattr(result.solution, "pos_x") and hasattr(result.solution, "pos_y"):
        solution.coords = {
            "pos_x": result.solution.pos_x,
            "pos_y": result.solution.pos_y
        }
    elif hasattr(result.solution, "place"):
        var_place = result.solution.place
        positions = result.solution.coords
        coords = {"x": [None]*solution.num_circuits, "y": [None]*solution.num_circuits}

        for i in range(len(var_place)):
            nc = var_place[i]
            for j in range(len(nc)):
                if nc[j] == 1:
                    coords["x"][i] = round(positions[j] % solution.width)
                    coords["y"][i] = round(positions[j] // solution.width)
        solution.coords = coords

    solution.rotation = None if not hasattr(result.solution, "rot") else result.solution.rot
    
    solution.time_solved = minizinc_solve_time(result)

    return solution

def solve(input_name, model_type, solver: MznSolver=MznSolver.GECODE, timeout=None, free_search=False, height=None):

    input_file = f"../instances/ins-{input_name}.dzn"

    if not exists(input_file):
        logging.error(f"The file {input_file} doesn't exist, provide a valid one")
        raise FileNotFoundError
    
    model_file = f'./base.mzn' if model_type == ModelType.BASE else f'./rotation.mzn'

    model = Model(model_file)
    
    # Add the height parameter if provided
    if height is not None:
        model.add_string(f'int: height = {height};')

    # Create a Minizinc Instance
    solver = Solver.lookup(solver.value)
    instance = Instance(solver,model)


    # Add the input file to the instance
    instance._add_file(input_file,parse_data=True)

    print(instance._data)
    # Set the timeout for solving if provided
    if timeout:
        td_timeout = timedelta(seconds=timeout)
    else:
        td_timeout = None

    try:
        # Solve the instance
        result = instance.solve(timeout=td_timeout, free_search=free_search)

    except MiniZincError as err:
        print(f"Error: {err}")
        solution = Solution()
        solution.status = Status_CP.ERROR
        solution.input_name = input_name
        return solution
    
    solution = Solution()
    solution.input_name = input_name
    solution.time_solved = timeout

    print(result.status)

    if result.status == Status.SATISFIED:
        solution.status = Status_CP.FEASIBLE
    elif result.status == Status.OPTIMAL_SOLUTION:
        solution.status = Status_CP.OPTIMAL
    elif result.status == Status.UNSATISFIABLE:
        solution.status = Status_CP.INFEASIBLE
    elif result.status == Status.UNKNOWN:
        solution.status = Status_CP.NO_SOLUTION
    elif result.status == Status.ERROR:
        solution.status = Status_CP.ERROR
    elif result.status == Status.UNBOUNDED:
        solution.status = Status_CP.UNBOUNDED
    else:
        raise BaseException("Unknown status")
    
    if CorrectSolution(solution.status):
        return get_minizinc_result(result, instance, solution)
    else:
        return solution

def main():
    input_file = '1'

    solve(input_file, ModelType.BASE, MznSolver.CHUFFED, timeout=300, free_search=False)

if __name__ == '__main__':
    main()
