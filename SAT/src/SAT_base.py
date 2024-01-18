
import numpy as np
import matplotlib.pyplot as plt
from z3 import *
from itertools import combinations
from timeit import default_timer as timer
from tqdm import tqdm
import time as system_time
import os
from utils import *
import re
from matplotlib import patches
from matplotlib.patches import Rectangle
import matplotlib.colors as colors
import random
import warnings
warnings.filterwarnings('ignore')


def solverSAT(problem_number,instance_dir,out_dir, plot=False):

    instance_file = os.path.join(instance_dir, f'ins-{problem_number}' + '.txt')
    instance_filename = f'ins-{problem_number}'
    out_file = os.path.join(out_dir,instance_filename + '-out.txt')
    print('INSTANCE-' + str(problem_number))

    w, n, chips_w, chips_h, circuits, min_h, max_h = load_file(instance_file)

    identical_circuits = find_identical_circuits_with_count(chips_w, chips_h)
    

    for h in range(min_h, max_h):

        # VARIABLES

        cells = [[[Bool(f"cell_{i}_{j}_{k}") for k in range(n)] for j in range(w)] for i in range(h)]
        print("variables:", n * w * h)
        print("current h: ", h)
        
        # SOLVER

        solver = Solver()
        start_time = system_time.time()

        # CONSTRAINTS

        #C1 - Each circuit is placed exactly once
        '''
        This constraint restricts the solver to solutions where each cell on the plate is occupied by no more than one circuit.
        It effectively prevents any two circuits from overlapping in the same cell.
        '''
        for i in tqdm(range(h), desc='Constraint 1: exactly one circuit positioning', leave=False):
            for j in range(w):
                solver.add(exactly_one([cells[i][j][k] for k in range(n)]))

        #C2 - Do not overlap
        '''
        * The solver examines each circuit k.
        * For each circuit k, the solver considers all possible starting positions on the plate where the circuit could be placed.
        * for x in range(h - chips_h[k] + 1) and for y in range(w - chips_w[k] + 1) iterate over all possible starting positions (x, y) for circuit k on the plate.
        * h - chips_h[k] + 1 and w - chips_w[k] + 1 ensure that the circuit does not exceed the plate's height (h) and width (w) limits.
         
        * For each possible starting position (x, y), the solver creates a condition And([cells[x + i][y + j][k] for j in range(chips_w[k]) for i in range(chips_h[k])]). 
          This condition checks that all cells that would be occupied by circuit k (given its dimensions chips_w[k] and chips_h[k]) are indeed occupied by that circuit.
          

        * The solver adds an at_least_one(possible_cells) constraint, ensuring that at least one of the generated conditions for circuit k is true. 
          In other words, at least one of the potential starting positions must be selected to place circuit k on the plate.
        '''
        for k in tqdm(range(n), desc='Constraint 2: no overlapping between circuits', leave=False):
            possible_cells = []
            for x in range(h - chips_h[k] + 1):
                for y in range(w - chips_w[k] + 1):
                    possible_cells.append(And([cells[x + i][y + j][k] for j in range(chips_w[k]) for i in range(chips_h[k])]))
            solver.add(at_least_one(possible_cells))

        
        #C3 - positioning the highest circuit in the left-bottom corner
        max_y = np.argmax(chips_h)
        for i in tqdm(range(chips_h[max_y]), desc='Constraint 3: set largest circuit first', leave=False):
            for j in range(chips_w[max_y]):
                for k in range(n):
                    if k == max_y:
                        solver.add(cells[i][j][k])
                    else:
                        solver.add(Not(cells[i][j][k]))
        
        #C4 - symmetry breaking constraint
       
        for dimensions, (indices, count) in identical_circuits.items():
            if count > 1:
                for i in range(1, count):
                    circuit_idx = indices[i]
                    previous_circuit_idx = indices[i-1]
                    for x in range(h):
                        for y in range(w):
                            # If the current circuit is placed in (x, y), the previous identical circuit must be placed somewhere before
                            previous_positions = [cells[prev_x][prev_y][previous_circuit_idx] for prev_x in range(h) for prev_y in range(y)] + \
                                                 [cells[prev_x][y][previous_circuit_idx] for prev_x in range(x)]
                            solver.add(Implies(cells[x][y][circuit_idx], Or(previous_positions)))

        
        # maximum time of execution
        timeout = 300000
        solver.set("timeout", timeout)


        # Check the solver and process the result
        print('Checking the model...')
        #RESOLUTION
        outcome = solver.check()
        
        if outcome == sat:
            elapsed_time = system_time.time() - start_time
            print("SATISFIABLE in {:.2f} seconds".format(elapsed_time))
            m = solver.model()
            p_x_sol, p_y_sol, rot_sol = model_to_coordinates(m, cells, w, h, n)
            circuits_pos = [(p_x_sol[i], p_y_sol[i]) for i in range(len(p_x_sol))]
            write_file(w,n,chips_w,chips_h,circuits_pos,rot_sol,h,elapsed_time,out_file)
            circuits = list(zip(chips_w, chips_h))
            print_circuit_info(circuits_pos, circuits,rot_sol)
            if plot:
                plot_solution_without_rotation(circuits_pos, chips_w, chips_h,w, h)
            return (w, h, circuits_pos, rot_sol, chips_w, chips_h, n,circuits, system_time.time() - start_time)
        else:
            print("UNSATISFIABLE")
            break

    print("Execution completed or timeout reached")
    return None,None,None,None,None,None,None,None


def main():
    problem_number = 3
    in_dir = "SAT\instances"
    out_dir = "SAT\out"
    plot = True
    solverSAT(problem_number,in_dir, out_dir,plot)


if __name__ == '__main__':
    main()