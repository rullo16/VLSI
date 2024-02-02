from z3 import *
import argparse
from glob import glob
import model_main
from utils.SMT_class import SMTSolver, ModelType
from utils.display_results import plot_cmap
from utils.table_smt import save_table
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
    parser.add_argument("-s", "--solver", help="Solver to use", required=False, type=str, choices=[s.name for s in SMTSolver])
    args = parser.parse_args()


    # Set input and output directories from arguments or default values
    input_dir = args.in_dir if args.in_dir is not None else default_input_dir
    output_dir = args.out_dir if args.out_dir is not None else out_path
    solver = SMTSolver[args.solver].value if args.solver is not None else SMTSolver.Z3.value

    # Determine which model to use based on the 'rotation' argument
    model = "rotation" if args.rotation else "main"
    print(f'Using {model} model.')

    # Loop through all input files in the input directory
    input_files = glob(os.path.join(input_dir, '*.txt'))
    input_files.sort()
    for i, input_file in enumerate(input_files):
        print("Solving instance", i)
        instance_file = os.path.splitext(os.path.basename(input_file))[0]
        print(instance_file)
        # Call the solver function with the appropriate model file based on the rotation option
        if args.rotation:
            solution = model_main.solver(input_file,solver_name=solver,model_type=ModelType.ROTATION)
            if solution:
                print_log(solution)
                save_solution(output_dir.format(model="rotation", file=instance_file),ModelType.ROTATION, instance_file, solution)
                plot_cmap(solution, out_plot_path.format(model="rotation", file=instance_file), rotation=True)
                save_table(out_stats_path.format(model="rotation", file=solver), solution)
        else:
            print(input_file)
            solution = model_main.solver(input_file,solver_name=solver)
            print(solution)
            if solution:
                print_log(solution)
                save_solution(output_dir.format(model="base", file=instance_file),ModelType.BASE, instance_file, solution)
                plot_cmap(solution, out_plot_path.format(model="base", file=instance_file))
                save_table(out_stats_path.format(model="base", file=solver), solution)

if __name__ == '__main__':
    main()



