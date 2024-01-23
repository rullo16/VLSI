import numpy as np
from typing import List, Tuple
import matplotlib.pyplot as plt
from z3 import *
from itertools import combinations
# from timeit import default_timer as timer
import time as system_time 
from tqdm import tqdm
from matplotlib import patches
from matplotlib.patches import Rectangle
import matplotlib.colors as colors
import random
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
    circuits.sort(key=lambda x: x[1], reverse=True)

    chips_w, chips_h = zip(*circuits)

    min_h = sum(w * h for w, h in circuits) // w
    max_h = sum(chips_h)

    return w, n, list(chips_w), list(chips_h), circuits, min_h, max_h


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

def find_identical_circuits_with_count(chips_w, chips_h):
    """
    Finds groups of identical circuits based on their dimensions and counts the number of circuits in each group.
    
    Args:
        chips_w: List of circuit widths.
        chips_h: List of circuit heights.
    
    Return: 
        dictionary: a dictionary where the keys are tuples representing the dimensions of identical circuits and the values are tuples containing the list of indices of identical circuits and the count of circuits in each group.
    """
    circuit_dimensions = {}
    for idx, (w, h) in enumerate(zip(chips_w, chips_h)):
        if (w, h) in circuit_dimensions:
            circuit_dimensions[(w, h)].append(idx)
        else:
            circuit_dimensions[(w, h)] = [idx]

    identical_circuits_with_count = {dims: (indices, len(indices)) for dims, indices in circuit_dimensions.items() if len(indices) > 1}
    return identical_circuits_with_count

def write_file(w: int, n: int, x: List[int], y: List[int], circuits_pos: List[Tuple[int, int]], rot_sol: List[bool], length: int, elapsed_time: float, out_file: str) -> None:
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

    Returns:
        None. The function writes the data to the specified output file.
    """
    with open(out_file, 'w+') as f_out:
        f_out.write(f'{w} {length}\n')
        f_out.write(f'{n}\n')

        circuit_lines = [f'{x[i]} {y[i]} {circuits_pos[i][0]} {circuits_pos[i][1]} {"Rot" if rot_sol[i] else "NoRot"}\n' for i in range(n)]
        f_out.writelines(circuit_lines)

        f_out.write(f'{elapsed_time:.2f}sec')

def model_to_coordinates(model, p, w, l, n, r=None) -> tuple:
    """
    Converts a model into coordinates.

    Args:
        model: A model object representing the solution to a problem.
        p: A 3-dimensional array representing the objects in the problem.
        w: The width of the problem space.
        l: The length of the problem space.
        n: The number of objects in the problem.
        r (optional): An array representing the rotation status of each object.

    Returns:
        A tuple containing the minimum x coordinates for each object, the minimum y coordinates for each object,
        and the rotation status for each object.
    """
    solution = np.array([[[bool(model[p[i][j][k]]) for k in range(n)] for j in range(w)] for i in range(l)])
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

