from utils_sat import *
import argparse
import os
from glob import glob
import SAT_base
import SAT_rotation


default_in_dir = "data\instances" if os.name == 'nt' else "data/instances"
default_out_dir = "SAT\out" if os.name == 'nt' else "SAT/out"

def main():
    
    parser = argparse.ArgumentParser()
    parser.add_argument("-I", "--all_or_instance", help="Specify 'all' to solve all instances, or provide a number to solve instances up to that specified number", default="all")
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
    
    
    # Check if output directory exists and create it if it does not exist
    
    
    if args.all_or_instance.lower() == "all":    
        for i in range():
            problem_number = i + 1
            if args.out_dir:
                out_dir_rot = os.path.join(out_dir, "out_rotation")
                out_dir_base = os.path.join(out_dir, "out_default")
                if not os.path.exists(out_dir_rot) and not os.path.exists(out_dir_base):
                    os.makedirs(out_dir_rot)
                    os.makedirs(out_dir_base)
                if args.rotation:
                    SAT_rotation.solverSAT(problem_number,in_dir, out_dir_rot,args.plot)
                else:
                    SAT_base.solverSAT(problem_number,in_dir, out_dir_base,args.plot)
            else:
                out_dir_rot = os.path.join(out_dir, "out_rotation")
                out_dir_base = os.path.join(out_dir, "out_default")
                if args.rotation:
                    SAT_rotation.solverSAT(problem_number,in_dir, out_dir_rot,args.plot)
                else:
                    SAT_base.solverSAT(problem_number,in_dir, out_dir_base,args.plot)

        
        get_report(out_dir_base,out_dir_rot)  
         
    else:
        for i in range(int(args.all_or_instance)):
            problem_number = i + 1
            if args.out_dir:
                out_dir_rot = os.path.join(out_dir, "out_rotation")
                out_dir_base = os.path.join(out_dir, "out_default")
                if not os.path.exists(out_dir_rot) and not os.path.exists(out_dir_base):
                    os.makedirs(out_dir_rot)
                    os.makedirs(out_dir_base)
                if args.rotation:
                    SAT_rotation.solverSAT(problem_number,in_dir, out_dir_rot,args.plot)
                else:
                    SAT_base.solverSAT(problem_number,in_dir, out_dir_base,args.plot)
            else:
                out_dir_rot = os.path.join(out_dir, "out_rotation")
                out_dir_base = os.path.join(out_dir, "out_default")
                if args.rotation:
                    SAT_rotation.solverSAT(problem_number,in_dir, out_dir_rot,args.plot)
                else:
                    SAT_base.solverSAT(problem_number,in_dir, out_dir_base,args.plot)
            
if __name__ == '__main__':
    main()

