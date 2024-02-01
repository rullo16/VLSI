import numpy as np
from typing import List, Tuple
import matplotlib.pyplot as plt
from z3 import *
from itertools import combinations
import time as system_time 
from tqdm import tqdm
from matplotlib import patches
from matplotlib.patches import Rectangle
import matplotlib.colors as colors
import random
import seaborn as sns
import pandas as pd
import os
import re


def load_file(instance_name: str) -> tuple:
    """
    Reads data from a file and processes it to extract relevant information.

    Args:
        instance_name (str): The name of the file to be loaded.

    Returns:
        tuple: A tuple containing the width, number of circuits, chip widths, chip heights, circuits, minimum height, and maximum height.
    """

    with open(instance_name, 'r') as f:
        lines = f.readlines()

    w = int(lines[0])
    n = int(lines[1])

    circuits = [tuple(map(int, line.split())) for line in lines[2:]]
    circuits.sort(key=lambda x: x[0] * x[1])

    chips_w, chips_h = zip(*circuits)

    min_h = sum(w * h for w, h in circuits) // w                
    max_h = sum(chips_h)

    return w, n, list(chips_w), list(chips_h), circuits, min_h, max_h

import numpy as np

def get_report(in_dir_default, in_dir_rotation):
    """
    Reads data from files in two given directories and creates a histogram plot using the data.

    Args:
        in_dir_default (str): The path to the directory containing the data files for the default model.
        in_dir_rotation (str): The path to the directory containing the data files for the rotation model.

    Returns:
        None. The function generates and displays a histogram plot based on the data read from the files.
    """
    instances = []
    seconds = []
    rotation = []

    max_instance_num = max(int(filename.split('-')[1]) for filename in os.listdir(in_dir_default) if filename.startswith("ins-"))

    for instance_num in range(1, max_instance_num + 1):
        # Check if the file for no rotation exists
        filename_no_rot = f"ins-{instance_num}-out.txt"
        if filename_no_rot in os.listdir(in_dir_default):
            with open(os.path.join(in_dir_default, filename_no_rot), 'r') as f:
                time = float(f.readlines()[-1].strip())
                seconds.append(time)
                rotation.append(0)
                instances.append(instance_num)
        else:
            seconds.append(np.nan)
            rotation.append(np.nan)
            instances.append(instance_num)

        # Check if the file for rotation exists
        filename_rot = f"ins-{instance_num}-rot-out.txt"
        if filename_rot in os.listdir(in_dir_rotation):
            with open(os.path.join(in_dir_rotation, filename_rot), 'r') as f:
                time = float(f.readlines()[-1].strip())
                seconds.append(time)
                rotation.append(1)
                instances.append(instance_num)
        else:
            seconds.append(np.nan)
            rotation.append(np.nan)
            instances.append(instance_num)

    data_df = pd.DataFrame({
        'instance': instances,
        'seconds': seconds,
        'rotation': rotation
    })

    data_df['rotation'] = data_df['rotation'].fillna(0).astype(int)

    plot_histograms(data_df)
        

def at_least_one(bool_vars):
    return Or(bool_vars)

def at_most_one(bool_vars):
    return [Not(And(pair[0], pair[1])) for pair in combinations(bool_vars, 2)]

def exactly_one(bool_vars):
    return at_most_one(bool_vars) + [at_least_one(bool_vars)]


def plot_solution_without_rotation(circuits_pos, chips_w, chips_h, w, h) -> None:
    """
    Plot the solution for a circuit layout problem without considering rotation of the circuits.

    Args:
    - circuits_pos: A list of tuples representing the positions of the circuits on the layout.
    - chips_w: A list of integers representing the widths of the circuits.
    - chips_h: A list of integers representing the heights of the circuits.
    - w: An integer representing the width of the layout.
    - h: An integer representing the height of the layout.

    Returns:
    None
    """
    fig, ax = plt.subplots(figsize=(7, 7))

    offset = 1
    ax.set_xlim([-offset, w + offset])
    ax.set_ylim([-offset, h + offset])
    ax.set_xticks(range(-offset, w + offset + 1))
    ax.set_yticks(range(-offset, h + offset + 1))
    ax.set_aspect('equal')
    for pos, width, height in zip(circuits_pos, chips_w, chips_h):
        ax.add_patch(Rectangle(pos, width, height, color=[random.random(), random.random(), random.random()], edgecolor='black', linewidth=1))

    ax.add_patch(Rectangle((0, 0), w, h, fill=False, edgecolor='black', linewidth=2))

    for x, y in circuits_pos:
        ax.scatter(x, y, color='black', edgecolors='black', s=20)

    plt.show()

def plot_solution(circuits_pos, chips_w, chips_h, w, h, rot_sol: List[bool]) -> None:
    """
    Plot the solution for a circuit layout problem.

    Args:
        circuits_pos: A list of tuples representing the positions of the circuits on the layout.
        chips_w: A list of integers representing the widths of the circuits.
        chips_h: A list of integers representing the heights of the circuits.
        w: An integer representing the width of the layout.
        h: An integer representing the height of the layout.
        rot_sol: A list of booleans indicating whether each circuit should be rotated or not.

    Returns:
        None
    """
    fig, ax = plt.subplots(figsize=(7, 7))
    offset = 1
    ax.set_xlim([-offset, w + offset])
    ax.set_ylim([-offset, h + offset])
    ax.set_xticks(range(-offset, w + offset + 1))
    ax.set_yticks(range(-offset, h + offset + 1))
    ax.set_aspect('equal')

    for i, (x, y) in enumerate(circuits_pos):
        width, height = (chips_h[i], chips_w[i]) if rot_sol[i] else (chips_w[i], chips_h[i])

        ax.add_patch(Rectangle((x, y), width, height, color=[random.random(), random.random(), random.random()], linewidth=1))
        if rot_sol[i]:
            center_x = x + width / 2
            center_y = y + height / 2
            ax.text(center_x, center_y, "R", fontsize=15, color="black", ha="center", va="center")

    ax.add_patch(Rectangle((0, 0), w, h, fill=False, edgecolor='black', linewidth=2))

    for x, y in circuits_pos:
        ax.scatter(x, y, color='black', edgecolors='black', s=20)

    plt.show()


def add_constraint_4(i, j, h, w,chips_w, cells, solver):
    for k in range(w - chips_w[i]):
        solver.add(Implies(And(*(cells[x][k][i] for x in range(h))), Not(And(*(cells[x][w - chips_w[j]][i] for x in range(h))))))
        for l in range(chips_w[i], w - chips_w[j] + 1):
            solver.add(Implies(And(*(cells[x][k][i] for x in range(h))), Implies(And(*(cells[x][l][i] for x in range(h))), And(*(cells[x][k][j] for x in range(h))))))

def add_swapped_constraint_4(i, j, h, w, chips_w, cells, solver):
    for k in range(w - chips_w[j]):
        solver.add(Implies(And(*(cells[x][k][j] for x in range(h))), Not(And(*(cells[x][w - chips_w[i]][j] for x in range(h))))))
        for l in range(chips_w[j], w - chips_w[i] + 1):
            solver.add(Implies(And(*(cells[x][k][j] for x in range(h))), Implies(And(*(cells[x][l][j] for x in range(h))), And(*(cells[x][k][i] for x in range(h))))))

def write_file(w: int, n: int, x: List[int], y: List[int], circuits_pos: List[Tuple[int, int]], rot_sol: List[bool], length: int, elapsed_time: float, out_file: str,r = False) -> None:
    """
    This function writes the given data to a file in a specific format.

    Args:
        w (int): The value of `w` to be written to the file.
        n (int): The value of `n` to be written to the file.
        x (List[int]): The list of `x` values to be written to the file.
        y (List[int]): The list of `y` values to be written to the file.
        circuits_pos (List[Tuple[int, int]]): The list of circuit positions to be written to the file.
        rot_sol (List[bool]): The list of rotation solutions to be written to the file.
        length (int): The value of `length` to be written to the file.
        elapsed_time (float): The value of `elapsed_time` to be written to the file.
        out_file (str): The name of the output file.
        r (boolean, optional): Flag indicating whether to write the rotation status of each circuit. Defaults to False.

    Returns:
        None. The function writes the data to the specified output file.
    """
    with open(out_file, 'w+') as f_out:
        f_out.write(f'{w} {length}\n')
        f_out.write(f'{n}\n')

        if r:
            circuit_lines = [f'{x[i]} {y[i]} {circuits_pos[i][0]} {circuits_pos[i][1]} {"Rot" if rot_sol[i] else "NoRot"}\n' for i in range(n)]
        else:
            circuit_lines = [f'{x[i]} {y[i]} {circuits_pos[i][0]} {circuits_pos[i][1]}\n' for i in range(n)]

        f_out.writelines(circuit_lines)

        f_out.write(str(round(elapsed_time,5)))

def model_to_coordinates(model, cells, w, h, n, r=None) -> tuple:
    """
    Converts a model into coordinates.

    Args:
        model: A model object representing the solution to a problem.
        cells: A 3-dimensional array representing the objects in the problem.
        w: The width of the problem space.
        h: The length of the problem space.
        n: The number of objects in the problem.
        r (optional): An array representing the rotation status of each object.

    Returns:
        A tuple containing the minimum x coordinates for each object, the minimum y coordinates for each object,
        and the rotation status for each object.
    """
    solution = np.array([[[bool(model[cells[i][j][k]]) for k in range(n)] for j in range(w)] for i in range(h)])
    p_x_sol = []
    p_y_sol = []
    rot_sol = [False for _ in range(n)]

    for k in range(n):
        y_ids, x_ids = np.nonzero(solution[:, :, k])
        x = np.min(x_ids)
        y = np.min(y_ids)
        p_x_sol.append(x)
        p_y_sol.append(y)
        if r is not None:
            rot_sol[k] = bool(model[r[k]])
    return p_x_sol, p_y_sol, rot_sol


def print_circuit_info(circuits_pos, circuits,rot_sol:List[bool],rotation:bool=False) -> None:
    """
    Prints information about circuits.

    Args:
        circuits_pos (list of tuples): The positions of the circuits in the format `(x, y)`.
        circuits (list of tuples): The dimensions of the circuits in the format `(width, height)`.
        rot_sol (list of booleans): The rotation solution for each circuit.
        rotation (boolean, optional): Flag indicating whether to print the rotation status of each circuit. Defaults to False.

    Returns:
        None: The function only prints the circuit information.
    """
    for k, (width, height) in enumerate(circuits):
        x, y = circuits_pos[k]
        if rotation:
            rotation_status = "T" if rot_sol[k] else "F"
            print(f"Circuit {k}: Width={width}, Height={height}, X={x}, Y={y}, R={rotation_status}")
        else:
            print(f"Circuit {k}: Width={width}, Height={height}, X={x}, Y={y}")


def plot_histograms(data_df):
    """
    Generates and displays a histogram plot based on the data provided in a DataFrame.

    Args:
        data_df (pd.DataFrame): A pandas DataFrame containing the data to be plotted. It should have three columns: 'instance', 'seconds', and 'rotation'.

    Returns:
        None. The function generates and displays a histogram plot based on the data provided.
    """
    plt.figure(figsize=(11, 5))
    sns.set_theme(style="whitegrid")
    ax = sns.barplot(x="instance", y="seconds", hue="rotation", data=data_df)

    plt.tight_layout()
    ax.set_yscale("symlog")
    ax.set_yticks([0, 1, 10, 100, 300])
    plt.savefig('SAT.png')
    plt.show()


