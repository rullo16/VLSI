import numpy as np
import matplotlib.pyplot as plt
from z3 import *
from itertools import combinations
from timeit import default_timer as timer
from tqdm import tqdm
import time as system_time
import os
import warnings
warnings.filterwarnings('ignore')
from utils_sat import *
import re


def solverSAT(problem_number: int,instance_dir:str,out_dir:str, plot:bool=False):

    instance_file = os.path.join(instance_dir, f'ins-{problem_number}' + '.txt')
    instance_filename = f'ins-{problem_number}'
    out_file = os.path.join(out_dir,instance_filename + '-rot-out.txt')
    print('INSTANCE-' + str(problem_number))

    w, n, chips_w, chips_h, circuits, min_h, max_h = load_file(instance_file)
     

    for h in range(min_h, max_h):
        # Initialize variables
        cells = [[[Bool(f"cell_{i}_{j}_{k}") for k in range(n)] for j in range(w)] for i in range(h)]
        
        rotated = [Bool(f"rotated_{k}") for k in range(n)] 

        print("variables:", n * w * h + n )
        print("current h: ", h)
        
        solver = Solver()
        start_time = system_time.time()


        # CONSTRAINTS
        # C1 - Unique Circuit Placement
        for i in tqdm(range(h), desc='Constraint 1: Unique Circuit Placement', leave=False):
            for j in range(w):
                solver.add(exactly_one([cells[i][j][k] for k in range(n)]))

        # C2 - Valid Circuit Positioning
        
        for k in tqdm(range(n), desc='Constraint 2: Valid Circuit Positioning', leave=False):
            possible_positions = []
            for i in range(h):
                for j in range(w):
                    # Posizioni per la configurazione ruotata
                    if i + chips_w[k] <= h and j + chips_h[k] <= w:
                        rotated_pos = And([cells[i + di][j + dj][k] for di in range(chips_w[k]) for dj in range(chips_h[k])])
                        # Aggiungi la condizione che il circuito k sia ruotato
                        possible_positions.append(And(rotated_pos, rotated[k]))

                    # Posizioni per la configurazione non ruotata
                    if i + chips_h[k] <= h and j + chips_w[k] <= w:
                        non_rotated = And([cells[i + di][j + dj][k] for di in range(chips_h[k]) for dj in range(chips_w[k])])
                        # Aggiungi la condizione che il circuito k non sia ruotato
                        possible_positions.append(And(non_rotated, Not(rotated[k])))
            solver.add(Or(possible_positions))
        
        
        # C3 - Priority Placement for Largest Circuit
        
        areas = [chips_h[i] * chips_w[i] for i in range(n)]  # calculate areas
        largest_c = np.argmax(areas)  # find the index of the largest area
        for i in tqdm(range(chips_h[largest_c]), desc='Constraint 3: set largest circuit first', leave=False):
            for j in range(chips_w[largest_c]):
                for k in range(n):
                    if k == largest_c:
                        solver.add(cells[i][j][k])
                    else:
                        solver.add(Not(cells[i][j][k]))
        

        # maximum time of execution
        timeout = 300000
        solver.set("timeout", timeout)


        # Check the solver and process the result
        print('Checking the model...')

        outcome = solver.check()
        if outcome == sat:
            elapsed_time = system_time.time() - start_time
            print("SATISFIABLE in {:.2f} seconds".format(elapsed_time))
            m = solver.model()
            p_x_sol, p_y_sol, rot_sol = model_to_coordinates(m,cells, w, h, n,rotated)
            circuits_pos = [(p_x_sol[i], p_y_sol[i]) for i in range(len(p_x_sol))]
            write_file(w,n,chips_w,chips_h,circuits_pos,rot_sol,h,elapsed_time,out_file)
            circuits = list(zip(chips_w, chips_h))
            print_circuit_info(circuits_pos, circuits,rot_sol,rotation=True)
            if plot:
                plot_solution(circuits_pos, chips_w, chips_h,w, h,rot_sol)
            return (w, h, circuits_pos, rot_sol, chips_w, chips_h, n, system_time.time() - start_time)
        else:
            print("UNSATISFIABLE or TIMEOUT")
            break

    print("Execution completed or timeout reached")
    return None, None, None, None, None, None, None, None


