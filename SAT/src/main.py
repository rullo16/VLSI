from utils_sat import *
import argparse
import os
from glob import glob
import SAT_base
import SAT_rotation


default_in_dir = "data\instances" if os.name == 'nt' else "data/instances"
default_out_dir = "data\out" if os.name == 'nt' else "data/out"

def main():
    
    parser = argparse.ArgumentParser()
    parser.add_argument("-I", "--all_or_instance", help="Specify 'all' to solve all instances or provide an instance number", default="all")
    parser.add_argument("-i", "--in_dir", help="Path to the directory containing the initial instances",required=False, type=str)
    parser.add_argument("-o", "--out_dir",help="Path to the directory that will contain the output solutions in .txt format",required=False, type=str)
    parser.add_argument("-r","--rotation", help="Flag to decide whether it is possible use rotated circuits",required=False, action='store_true')
    parser.add_argument("-p","--plot", help="Flag to decide whether it is possible plot the solution",required=False, action='store_true')
    args = parser.parse_args()
    

    # model to execute
    if args.rotation:
        model = "rotation"
    else:
        model = "base"
    

    in_dir = args.in_dir if args.in_dir is not None else default_in_dir
    out_dir = args.out_dir if args.out_dir is not None else default_out_dir
    

    if args.all_or_instance.lower() == "all":    
        for i in range(len(glob(os.path.join(in_dir, '*.txt')))):
            problem_number = i + 1

            if args.rotation:
                SAT_rotation.solverSAT(problem_number,in_dir, out_dir,args.plot)
            else:
                SAT_base.solverSAT(problem_number,in_dir, out_dir,args.plot)

        get_report(out_dir)  
         
    else:
        problem_number = int(args.all_or_instance)
        if args.rotation:
            SAT_rotation.solverSAT(problem_number,in_dir, out_dir,args.plot)
        else:
            SAT_base.solverSAT(problem_number,in_dir, out_dir,args.plot)
            
if __name__ == '__main__':
    main()

