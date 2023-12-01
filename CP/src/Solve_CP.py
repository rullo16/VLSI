import argparse
import os
from glob import glob
from Solver import solve
import logging
import sys
sys.path.append('./')

from typing import List, Tuple, Union
from utils.logs import print_log
from utils.types import CorrectSolution, SolverMinizinc, ModelType


def compute_solution(input_name, model_type: ModelType, solver:SolverMinizinc, timeout:int, free_search, verbose):
    solution = solve(input_name, model_type, solver, timeout, free_search)
    print_log(solution)
    l = solution.height if hasattr(solution, "height") else 0
    cx = solution.coords["x"] if hasattr(solution, "coords") else []
    cy = solution.coords["y"] if hasattr(solution, "coords") else []
    
    return solution


def compute_texts(test_instances, model_type:ModelType, solver:SolverMinizinc, free_search, timeout, verbose):
    
    for i in test_instances:
        solution = compute_solution(f"ins-{i}", model_type, solver, timeout, free_search, verbose)
    print(f"\n - Computed instance {i}: {solution.status.name} {f'in {solution.solve_time:.2f} ms' if CorrectSolution(solution.status) else ''}")






# Default input and output directories
default_input_dir = "..\instances" if os.name == 'nt' else "../instances"
default_output_dir = "..\out" if os.name == 'nt' else "../out"

def main():
    # Argument parser for command-line options
    parser = argparse.ArgumentParser()
    parser.add_argument("-i", "--in_dir", help="Path to directory containing instances", required=False, type=str)
    parser.add_argument("-o", "--out_dir", help="Path to directory containing the output solutions in .txt format", required=False, type=str)
    parser.add_argument("-r", "--rotation", help="Use rotated circuits", required=False, action='store_true')
    args = parser.parse_args()

    # Set input and output directories from arguments or default values
    input_dir = args.in_dir if args.in_dir is not None else default_input_dir
    output_dir = args.out_dir if args.out_dir is not None else default_output_dir

    # Loop through all input files in the input directory
    for i, input_file in enumerate(glob(os.path.join(input_dir, '*.dzn'))):
        print("Solving instance", i)

        cores = 1
        # Call the solver function with the appropriate model file based on the rotation option
        if args.rotation:
            solve(i+1, ModelType.ROTATION, SolverMinizinc.GECODE, timeout=300, free_search=False)
        else:
            solve(i+1, ModelType.ROTATION, SolverMinizinc.GECODE, timeout=300, free_search=False)

if __name__ == '__main__':
    main()


