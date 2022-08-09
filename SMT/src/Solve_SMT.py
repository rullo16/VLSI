from z3 import *
import argparse
import os
from glob import glob
import model_main
import model_rotation


default_input_dir = "..\..\data\instances" if os.name == 'nt' else "../../data/instances"
default_output_dir = "..\out" if os.name == 'nt' else "../out"


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("-i", "--in_dir", help="Path to directory containing instances", required=False, type=str)
    parser.add_argument("-o", "--out_dir", help="Path to directory containing the output solutions in .txt format", required=False, type=str)
    parser.add_argument("-r", "--rotation", help="Use rotated circuits", required=False, action='store_true')
    args = parser.parse_args()

    if args.rotation:
        model = "rotation"
    else:
        model = "main"
    print(f'Using {model} model.')

    input_dir = args.in_dir if args.in_dir is not None else default_input_dir
    output_dir = args.out_dir if args.out_dir is not None else default_output_dir

    for i in range(len(glob(os.path.join(input_dir, '*.txt')))):
        input_file = os.path.join(input_dir, f'ins-{i+1}.txt')

        print("Solving instance", i)

        cores = 1
        if args.rotation:
            model_rotation.solver(input_file,output_dir)
        else:
            model_main.solver(input_file,output_dir)

if __name__ == '__main__':
    main()


