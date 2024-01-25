from utils_sat import *
import os
from glob import glob

instance_dir='SAT/instances'
for i in range(len(glob(os.path.join(instance_dir, '*.txt')))):
            problem_number = i + 1
            instance_file = os.path.join(instance_dir, f'ins-{problem_number}' + '.txt')

            with open(instance_file, 'r') as f:
                    lines = f.readlines()

            w = int(lines[0])
            n = int(lines[1])

            circuits = [tuple(map(int, line.split())) for line in lines[2:]]
            circuits.sort(key=lambda x: x[0] * x[1])

            chips_w, chips_h = zip(*circuits)
        
            print(f'instance{problem_number}:',find_identical_circuits_with_count(chips_w, chips_h))