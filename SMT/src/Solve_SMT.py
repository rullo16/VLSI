from z3 import *
import argparse
import os
sys.path.append('../..')
from glob import glob
import model_main
import model_rotation
from utils.types_SMT import SolverSMT, CorrectSolution, ModelType
from utils.display_results import plot_solution
from utils.statistics_smt import save_statistics
from utils.logs_SMT import save_solution, print_log



# Default input and output directories
default_input_dir = "..\..\data\instances" if os.name == 'nt' else "../../data/instances"
out_path = "..\out\{model}\{file}" if os.name == 'nt' else "../out/{model}/{file}"
out_plot_path="..\out\plot\{model}\{file}.png" if os.name == 'nt' else "../out/plot/{model}/{file}.png"
out_stats_path="..\out\stats\{model}\{file}.csv" if os.name == 'nt' else "../out/stats/{model}/{file}.csv"


def main():
    # Parse command-line arguments
    # Argument parser for command-line options
    parser = argparse.ArgumentParser()
    parser.add_argument("-i", "--in_dir", help="Path to directory containing instances", required=False, type=str)
    parser.add_argument("-o", "--out_dir", help="Path to directory containing the output solutions in .txt format", required=False, type=str)
    parser.add_argument("-r", "--rotation", help="Use rotated circuits", required=False, action='store_true')
    parser.add_argument("-s", "--solver", help="Solver to use", required=False, type=str, choices=[s.name for s in SolverSMT])
    args = parser.parse_args()


    # Set input and output directories from arguments or default values
    input_dir = args.in_dir if args.in_dir is not None else default_input_dir
    output_dir = args.out_dir if args.out_dir is not None else out_path
    solver = SolverSMT[args.solver] if args.solver is not None else SolverSMT.Z3

    # Determine which model to use based on the 'rotation' argument
    model = "rotation" if args.rotation else "main"
    print(f'Using {model} model.')

    # Loop through all input files in the input directory and solve each instance
    # for i, input_file in enumerate(glob(os.path.join(input_dir, '*.txt'))):
    #     print("Solving instance", i)

    #     # Call the appropriate solver function based on the selected model
    #     if args.rotation:
    #         model_rotation.solver(input_file, output_dir)
    #     else:
    #         model_main.solver(input_file, output_dir)
    
    # Loop through all input files in the input directory
    for i, input_file in enumerate(glob(os.path.join(input_dir, '*.txt'))):
        print("Solving instance", i)
        instance_file = f'ins-{i+1}.txt'
        # Call the solver function with the appropriate model file based on the rotation option
        if args.rotation:
            #solution = solve(i+1, ModelType.ROTATION, solver, timeout=300, free_search=False)
            solution = model_rotation.solver(input_file, output_dir.format(model="rotation", file=instance_file))
            if solution:
                print_log(solution)
                #save_solution(output_dir.format(model="rotation", file=instance_file),ModelType.ROTATION, instance_file, solution)
                # plot_solution(solution, out_plot_path.format(model="rotation", file=instance_file))
                save_statistics(out_stats_path.format(model="rotation", file=solver), solution)
        else:
            solution = solve(i+1, ModelType.BASE, solver, timeout=300, free_search=False)
            print_log(solution)
            #plot_solution(solution, out_plot_path.format(model="base", file=input_file))
            save_statistics(out_stats_path.format(model="base", file=solver), solution)

if __name__ == '__main__':
    main()



