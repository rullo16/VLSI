import argparse
import os
from glob import glob
from Solver import solve

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

    # Determine the model based on the rotation option
    if args.rotation:
        model = "rotation"
    else:
        model = "symmetries"
    print(f'Using {model} model.')

    # Set input and output directories from arguments or default values
    input_dir = args.in_dir if args.in_dir is not None else default_input_dir
    output_dir = args.out_dir if args.out_dir is not None else default_output_dir

    # Loop through all input files in the input directory
    for i, input_file in enumerate(glob(os.path.join(input_dir, '*.dzn'))):
        print("Solving instance", i)

        cores = 1
        # Call the solver function with the appropriate model file based on the rotation option
        if args.rotation:
            solve(cores, "model_rotation.mzn", input_file, output_dir)
        else:
            solve(cores, "model.mzn", input_file, output_dir)

if __name__ == '__main__':
    main()


