import numpy as np
import matplotlib.pyplot as plt
from z3 import *
from timeit import default_timer as timer
from tqdm import tqdm
import os
import warnings
warnings.filterwarnings('ignore')
from utils_sat import *
import re


def solverSAT(problem_number: int,instance_dir:str,out_dir:str, plot:bool=False):
    """
    Solves a circuit placement problem using the Z3 solver.
    Rotation Allowed.

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
        # Initialize variables
        cells = [[[Bool(f"cell_{i}_{j}_{k}") for k in range(n)] for j in range(w)] for i in range(h)]
        left = [[Bool(f'left_{k}_{l}') for l in range(n)] for k in range(n)]
        down = [[Bool(f'down_{k}_{l}') for l in range(n)] for k in range(n)]
        rotated = [Bool(f"rotated_{k}") for k in range(n)] 

        print("variables:", n * w * h + n * n * 2 + n)
        print("current h: ", h)
        
        solver = Solver()
        start_time = timer()


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
                    if i + chips_w[k] <= h and j + chips_h[k] <= w:
                        rotated_pos = And([cells[i + di][j + dj][k] for di in range(chips_w[k]) for dj in range(chips_h[k])]) 
                        possible_positions.append(And(rotated_pos, rotated[k]))
                    if i + chips_h[k] <= h and j + chips_w[k] <= w:
                        non_rotated = And([cells[i + di][j + dj][k] for di in range(chips_h[k]) for dj in range(chips_w[k])])
                        possible_positions.append(And(non_rotated, Not(rotated[k])))
            solver.add(Or(possible_positions))
        
        
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
        
        # C4 - Relative position constraint
        for i in tqdm(range(n), desc='Constraint 4: Relative Position Constraint', leave=False):
            for j in range(i + 1, n):
                solver.add(at_least_one([left[i][j], left[j][i], down[i][j], down[j][i]]))
        
        
        # C5 - Leftmost Constraint
        for k in tqdm(range(n), desc='Constraint 5: Leftmost Constraint ', leave=False):
            for l in range(k + 1, n):
                for i in range(h):
                    solver.add(Implies(And(rotated[k], cells[i][0][k]), Not(left[l][k])))
                    solver.add(Implies(And(Not(rotated[k]), cells[i][0][k]), Not(left[l][k])))
                    solver.add(Implies(And(rotated[l], cells[i][0][l]), Not(left[k][l])))
                    solver.add(Implies(And(Not(rotated[l]), cells[i][0][l]), Not(left[k][l])))

        # C6 - Rightmost Constraint
        for k in tqdm(range(n), desc='Constraint 6: Rightmost Constraint', leave=False):
            for l in range(k + 1, n):
                for i in range(h):
                    solver.add(Implies(And(rotated[l],cells[i][w-1][k]), Not(left[k][l])))
                    solver.add(Implies(And(Not(rotated[l]),cells[i][w-1][k]), Not(left[k][l])))
                    solver.add(Implies(And(rotated[k],cells[i][w-1][l]), Not(left[l][k])))
                    solver.add(Implies(And(Not(rotated[k]),cells[i][w-1][l]), Not(left[l][k])))
        
        
        # C7 - Topmost Constraint
        for k in tqdm(range(n), desc='Constraint 7: Topmost Constraint', leave=False):
            for l in range(k + 1, n):
                for j in range(w):
                    solver.add(Implies(And(rotated[k],cells[0][j][k]), Not(down[k][l])))
                    solver.add(Implies(And(Not(rotated[k]),cells[0][j][k]), Not(down[k][l])))
                    solver.add(Implies(And(rotated[l],cells[0][j][l]), Not(down[l][k])))
                    solver.add(Implies(And(Not(rotated[l]),cells[0][j][l]), Not(down[l][k])))
        
        # C8 - Bottommost Constraint
        for k in tqdm(range(n), desc='Constraint 8: Bottommost Constraint', leave=False):
            for l in range(k + 1, n):
                for j in range(w):
                    solver.add(Implies(And(rotated[l],cells[h - 1][j][k]), Not(down[l][k])))
                    solver.add(Implies(And(Not(rotated[l]),cells[h - 1][j][k]), Not(down[l][k])))
                    solver.add(Implies(And(rotated[k],cells[h - 1][j][l]), Not(down[k][l])))
                    solver.add(Implies(And(Not(rotated[k]),cells[h - 1][j][l]), Not(down[k][l])))
        

        # maximum time of execution
        timeout = 300000
        solver.set("timeout", timeout)


        # Check the solver and process the result
        print('Checking the model...')

        outcome = solver.check()
        if outcome == sat:
            elapsed_time = timer() - start_time
            print("SATISFIABLE in {:.2f} seconds".format(elapsed_time))
            m = solver.model()
            p_x_sol, p_y_sol, rot_sol = model_to_coordinates(m,cells, w, h, n,rotated)
            circuits_pos = [(p_x_sol[i], p_y_sol[i]) for i in range(len(p_x_sol))]
            write_file(w,n,chips_w,chips_h,circuits_pos,rot_sol,h,elapsed_time,out_file,r = True)
            circuits = list(zip(chips_w, chips_h))
            print_circuit_info(circuits_pos, circuits,rot_sol,rotation=True)
            if plot:
                plot_solution(circuits_pos, chips_w, chips_h,w, h,rot_sol)
            return (w, h, circuits_pos, rot_sol, chips_w, chips_h, n, elapsed_time)
        elif outcome == unsat:
            print("UNSATISFIABLE for the current h: ", h)
            h += 1
        else:
            print("EXECUTION COMPLETED or TIMEOUT REACHED")
            return None, None, None, None, None, None, None, None



def main():
    in_dir = r"C:\Users\edoar.EDO\OneDrive\Desktop\VLSI_EDO\SAT\instances"
    output_dir = "C:/Users/edoar.EDO/OneDrive/Desktop" 
    problem_number = 1
    plot = False
    solverSAT(problem_number, in_dir, output_dir, plot)

if __name__ == '__main__':
    main()