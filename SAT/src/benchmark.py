import time
import numpy as np
import SAT_base
import SAT_rotation
from utils_sat import *
import argparse
import os
from glob import glob

#naive encoding   

def at_least_one_np(bool_vars):
    return Or(bool_vars)

def at_most_one_np(bool_vars):
    return [Not(And(pair[0], pair[1])) for pair in combinations(bool_vars, 2)]

def exactly_one_np(bool_vars):
    return at_most_one_np(bool_vars) + [at_least_one_np(bool_vars)]

#sequential encoding

def at_least_one_seq(bool_vars):
    return Or(bool_vars)

def at_most_one_seq(bool_vars, name):
    constraints = []
    n = len(bool_vars)
    s = [Bool(f"s_{name}_{i}") for i in range(n - 1)]
    constraints.append(Or(Not(bool_vars[0]), s[0]))
    constraints.append(Or(Not(bool_vars[n-1]), Not(s[n-2])))
    for i in range(1, n - 1):
        constraints.append(Or(Not(bool_vars[i]), s[i]))
        constraints.append(Or(Not(bool_vars[i]), Not(s[i-1])))
        constraints.append(Or(Not(s[i-1]), s[i]))
    return And(constraints)


def exactly_one_seq(bool_vars, name):
    return And(at_least_one_seq(bool_vars), at_most_one_seq(bool_vars, name))

# binary encoding
def toBinary(num, length = None):
    num_bin = bin(num).split("b")[-1]
    if length:
        return "0"*(length - len(num_bin)) + num_bin
    return num_bin
    
def at_least_one_bw(bool_vars):
    return at_least_one_np(bool_vars)

def at_most_one_bw(bool_vars, name):
    constraints = []
    n = len(bool_vars)
    m = math.ceil(math.log2(n))
    r = [Bool(f"r_{name}_{i}") for i in range(m)]
    binaries = [toBinary(i, m) for i in range(n)]
    for i in range(n):
        for j in range(m):
            phi = Not(r[j])
            if binaries[i][j] == "1":
                phi = r[j]
            constraints.append(Or(Not(bool_vars[i]), phi))        
    return And(constraints)

def exactly_one_bw(bool_vars, name):
    return And(at_least_one_bw(bool_vars), at_most_one_bw(bool_vars, name)) 


# heule encoding

def at_least_one_he(bool_vars):
    return at_least_one_np(bool_vars)

def at_most_one_he(bool_vars, name):
    if len(bool_vars) <= 4:
        return And(at_most_one_np(bool_vars))
    y = Bool(f"y_{name}")
    return And(And(at_most_one_np(bool_vars[:3] + [y])), And(at_most_one_he(bool_vars[3:] + [Not(y)], name+"_")))

def exactly_one_he(bool_vars, name):
    return And(at_most_one_he(bool_vars, name),at_least_one_he(bool_vars))


def write_stat(out_dir, stats, r=False):
    out_file = os.path.join(out_dir, 'benchmark.txt')

    with open(out_file, 'w') as f_out:
        for config, (total_time, solved_instances) in stats.items():
            total_time = stats[config]["total_time"]
            solved_instances = stats[config]["solved_instances"]
            if r:
                f_out.write(f"{config} with Rotation: Total time = {round(total_time,5)} sec, Solved instances = {solved_instances}\n")
            else:
                f_out.write(f"{config}: Total time = {round(total_time,5)} sec, Solved instances = {solved_instances}\n")
        
params = { 
    "at_least_one": [at_least_one_np,at_least_one_seq,at_least_one_bw,at_least_one_he], 
    "at_most_one": [at_most_one_np,at_most_one_seq,at_most_one_bw,at_most_one_he], 
    "exactly_one": [exactly_one_np,exactly_one_seq,exactly_one_bw,exactly_one_he]
          }

input_dir = "data\instances"
out_dir_bench = 'SAT\\out\\benchmark\\'
out_dir = "SAT\out"
def benchmark(in_dir, out_dir, out_dir_bench, params, r=False):
    stats = {
        "np": {"total_time": 0, "solved_instances": 0},
        "seq": {"total_time": 0, "solved_instances": 0},
        "bw": {"total_time": 0, "solved_instances": 0},
        "he": {"total_time": 0, "solved_instances": 0},
    }

    for j in range(len(params['at_least_one'])):
        for i in range(25):
            problem_number = i + 1
            start_time = time.time()

            if j == 0:
                config = 'np'
            elif j == 1:
                config = 'seq'  
            elif j == 2:
                config = 'bw'
            else:
                config = 'he'

            at_least_one = params['at_least_one'][j]
            at_most_one = params['at_most_one'][j]
            exactly_one = params['exactly_one'][j]

            result = SAT_base.solverSAT(problem_number, in_dir, out_dir, False)

            end_time = time.time()
            elapsed_time = end_time - start_time
            stats[config]["total_time"] += elapsed_time

            if result is not None:
                stats[config]["solved_instances"] += 1

    write_stat(out_dir_bench, stats, r)


benchmark(input_dir, out_dir,out_dir_bench, params)