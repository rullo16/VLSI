import sys
sys.path.append('./')
import os
import argparse
from glob import glob
from Solver import solve
import logging

from typing import List, Tuple, Union
from utils.logs import print_log, save_solution
from utils.types import CorrectSolution, SolverMinizinc, ModelType



def compute_solution(input_name, model_type: ModelType, solver:SolverMinizinc, timeout:int, free_search, verbose):
    solution = solve(input_name, model_type, solver, timeout, free_search)
    print_log(solution)
    l = solution.height if hasattr(solution, "height") else 0
    cx = solution.coords["x"] if hasattr(solution, "coords") else []
    cy = solution.coords["y"] if hasattr(solution, "coords") else []
    
    return solution


def compute_tests(test_instances, model_type:ModelType, solver:SolverMinizinc, free_search, timeout, verbose):
    
    for i in test_instances:
        solution = compute_solution(f"ins-{i}", model_type, solver, timeout, free_search, verbose)
    print(f"\n - Computed instance {i}: {solution.status.name} {f'in {solution.solve_time:.2f} ms' if CorrectSolution(solution.status) else ''}")

# Default input and output directories
default_input_dir = "..\instances" if os.name == 'nt' else "../instances"
out_path = "..\out\{model}\{file}" if os.name == 'nt' else "../out/{model}/{file}"


def main():
    # Argument parser for command-line options
    parser = argparse.ArgumentParser()
    parser.add_argument("-i", "--in_dir", help="Path to directory containing instances", required=False, type=str)
    parser.add_argument("-o", "--out_dir", help="Path to directory containing the output solutions in .txt format", required=False, type=str)
    parser.add_argument("-r", "--rotation", help="Use rotated circuits", required=False, action='store_true')
    args = parser.parse_args()

    # Set input and output directories from arguments or default values
    input_dir = args.in_dir if args.in_dir is not None else default_input_dir
    output_dir = args.out_dir if args.out_dir is not None else out_path

    # Loop through all input files in the input directory
    for i, input_file in enumerate(glob(os.path.join(input_dir, '*.dzn'))):
        print("Solving instance", i)
        input_file = f'ins-{i}.dzn'
        # Call the solver function with the appropriate model file based on the rotation option
        if args.rotation:
            solution = solve(i+1, ModelType.ROTATION, SolverMinizinc.GECODE, timeout=300, free_search=False)
            print_log(solution)
            if CorrectSolution(solution.status):
                save_solution(out_path, "rotation", input_file, solution)
        else:
            solution = solve(i+1, ModelType.BASE, SolverMinizinc.GECODE, timeout=300, free_search=False)
            print_log(solution)
            if CorrectSolution(solution.status):
                save_solution(out_path, "base", input_file, solution)

if __name__ == '__main__':
    main()


