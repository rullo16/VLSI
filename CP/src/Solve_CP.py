import argparse
from ast import arg
from email.policy import default
import os
from glob import glob
from turtle import st
from Solver import solve
import re

default_input_dir = "..\instances" if os.name == 'nt' else "../instances"
default_output_dir = "..\output" if os.name == 'nt' else "../output"


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("-i", "--in_dir", help="Path to directory containing instances", required=False, type=str)
    parser.add_argument("-o", "--out_dir", help="Path to directory containing the output solutions in .txt format", required=False, type=str)
    parser.add_argument("-r", "--rotation", help="Use rotated circuits", required=False, type='store_true')
    args = parser.parse_args()

    if arg.rotation:
        model = "rotation"
    
    print(f'Using {model} model.')

    input_dir = args.in_dir if args.in_dir is not None else default_input_dir
    output_dir = args.out_dir if args.out_dir is not None else default_output_dir

    for i in range(len(glob(os.path.join(input_dir, '*.dzn')))):
        input_file = os.path.join(input_dir, f'ins-{i+1}.dzn')

        print("Solving instance", i)

        cores = 1
        if args.rotation:
            solve(cores, "model_rotation.mzn", input_file,output_dir)
        else:
            solve(cores, "model.mzn", input_file,output_dir)

if __name__ == '__main__':
    main()


