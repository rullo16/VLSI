
import numpy as np
import matplotlib.pyplot as plt
from z3 import *
from timeit import default_timer as timer
from tqdm import tqdm
import os
from utils_sat import *
import re
from matplotlib import patches
from matplotlib.patches import Rectangle
import matplotlib.colors as colors
import random
import warnings
warnings.filterwarnings('ignore')


def solverSAT(problem_number: int, instance_dir: str,out_dir = str, plot: bool = False):
    """
    Solves a circuit placement problem using the Z3 solver.
    Rotation Not Allowed.

    Args:
        problem_number (int): The number of the problem instance to solve.
        instance_dir (str): The directory where the problem instances are stored.
        out_dir (str): The directory where the output files will be written.
        plot (bool, optional): Flag indicating whether to plot the solution. Default is False.

    Returns:
        - w (int): Width of the circuit placement.
        - h (int): Height of the circuit placement.
        - circuits_pos (list): List of circuit positions.
        - rot_sol (list): List of circuit rotation states.
        - chips_w (list): List of circuit widths.
        - chips_h (list): List of circuit heights.
        - n (int): Number of circuits.
        - elapsed_time (float): Time taken to find the solution.
    """

    instance_file = os.path.join(instance_dir, f'ins-{problem_number}' + '.txt')
    instance_filename = f'ins-{problem_number}'
    out_file = os.path.join(out_dir,instance_filename + '-rot-out.txt')
    print('INSTANCE-' + str(problem_number))

    w, n, chips_w, chips_h, circuits, min_h, max_h = load_file(instance_file)


      
    h = min_h
    while h <= max_h:

        # VARIABLES
        cells = [[[Bool(f"cell_{i}_{j}_{k}") for k in range(n)] for j in range(w)] for i in range(h)]
        print("variables:", n * w * h)
        print("current h: ", h)

        # SOLVER
        solver = Solver()
        start_time = timer()

        # CONSTRAINTS

        # C1 - Unique Circuit Placement      
        for i in tqdm(range(h), desc='Constraint 1: Unique Circuit Placement', leave=False):
            for j in range(w):
                solver.add(exactly_one([cells[i][j][k] for k in range(n)]))

        # C2 - Valid Circuit Positioning
        for k in tqdm(range(n), desc='Constraint 2: Valid Circuit Positioning', leave=False):
            possible_cells = []
            for x in range(h - chips_h[k] + 1):
                for y in range(w - chips_w[k] + 1):
                    possible_cells.append(And([cells[x + i][y + j][k] for j in range(chips_w[k]) for i in range(chips_h[k])]))
            solver.add(at_least_one(possible_cells))

        # C3 - Priority Placement for Largest Circuit    
        areas = [chips_h[i] * chips_w[i] for i in range(n)]  
        largest_c = np.argmax(areas)  
        for i in tqdm(range(chips_h[largest_c]), desc='Constraint 3: set largest circuit first', leave=False):
            for j in range(chips_w[largest_c]):
                for k in range(n):
                    if k == largest_c:
                        solver.add(cells[i][j][k])
                    else:
                        solver.add(Not(cells[i][j][k]))

        # C4 - Non-overlapping Constraint
        for i in tqdm(range(h), desc='Constraint 4: Non-overlapping Circuits', leave=False):
            for j in range(w):
                for k1 in range(n):
                    for k2 in range(k1+1, n):  # Avoid duplicate pairs
                        # If circuit k1 is placed at (i, j), circuit k2 cannot be placed at the same position
                        solver.add(Implies(cells[i][j][k1], Not(cells[i][j][k2])))
         
        
        # C5 - Symmetry Breaking Constraint
        for k1 in tqdm(range(n), desc='Constraint 5: Symmetry Breaking', leave=False):
            for k2 in range(k1+1, n):  # Avoid duplicate pairs
                for i in range(h):
                    for j in range(w):
                        # If circuit k1 and k2 are at the same y-coordinate, k1 should have smaller or equal x-coordinate
                        solver.add(Implies(And(cells[i][j][k1], cells[i][j][k2]), Or([cells[i][j_prime][k1] for j_prime in range(j+1)])))

        # C6 - Horizontal Symmetry Breaking Constraint
        for k1 in tqdm(range(n), desc='Constraint 6: Horizontal Symmetry Breaking', leave=False):
            for k2 in range(k1+1, n):  # Avoid duplicate pairs
                for j in range(w):
                    for i in range(h):
                        # If circuit k1 and k2 are at the same x-coordinate, k1 should have smaller or equal y-coordinate
                        solver.add(Implies(And(cells[i][j][k1], cells[i][j][k2]), Or([cells[i_prime][j][k1] for i_prime in range(i+1)])))
 
        # maximum time of execution
        timeout = 300000
        solver.set("timeout", timeout)

        # Check the solver and process the result
        print('Checking the model...')
        # RESOLUTION
        outcome = solver.check()

        if outcome == sat:
            elapsed_time = timer() - start_time
            print("SATISFIABLE in {:.2f} seconds".format(elapsed_time))
            m = solver.model()
            p_x_sol, p_y_sol, rot_sol = model_to_coordinates(m, cells, w, h, n)
            circuits_pos = [(p_x_sol[i], p_y_sol[i]) for i in range(len(p_x_sol))]
            write_file(w, n, chips_w, chips_h, circuits_pos, rot_sol, h, elapsed_time, out_file)
            circuits = list(zip(chips_w, chips_h))
            print_circuit_info(circuits_pos, circuits, rot_sol)
            if plot:
                plot_solution_without_rotation(circuits_pos, chips_w, chips_h, w, h)
            return w, h, circuits_pos, rot_sol, chips_w, chips_h, n, circuits, elapsed_time
        else:
            print("UNSATISFIABLE or TIMEOUT")
            h += 1
            return None

    print("Execution completed or timeout reached")
    return None, None, None, None, None, None, None, None


