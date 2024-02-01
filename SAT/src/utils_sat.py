import numpy as np
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

def load_file(instance_name):
    f = open(instance_name,'r')
    lines = f.readlines()
    w = int(lines[0])
    n = int(lines[1])
    circuits = [tuple(map(int, line.split())) for line in lines[2:]]
    circuits = sorted(circuits, key=lambda x: x[1], reverse=True)
    chips_w = []
    chips_h = []
    for el in circuits:
        x, y = el
        chips_w.append(x)
        chips_h.append(y)

    min_h = sum([chips_w[k] * chips_h[k] for k in range(n)]) // w    # A = w * h => h = A / w
    max_h = sum(chips_h)   # chips placed on top of each other

    return w, n ,chips_w, chips_h,circuits, min_h, max_h


def at_least_one(bool_vars):
    return Or(bool_vars)

def at_most_one(bool_vars):
    return [Not(And(pair[0], pair[1])) for pair in combinations(bool_vars, 2)]

def exactly_one(bool_vars):
    return at_most_one(bool_vars) + [at_least_one(bool_vars)]


# function needed to display a solution of the 2D-OSPP problem
def plot_solution_without_rotation(circuits_pos, chips_w, chips_h, w, h):
    fig, ax = plt.subplots(figsize=(7, 7))

    offset = 1
    plt.xlim([-offset, w + offset])
    plt.ylim([-offset, h + offset])
    plt.xticks(range(-offset, w + offset + 1))
    plt.yticks(range(-offset, h + offset + 1))
    ax.set_aspect('equal')
    for i in range(0, len(circuits_pos)):
        ax.add_patch(Rectangle(circuits_pos[i], chips_w[i], chips_h[i], 
                                   color = [random.random(),
                                            random.random(),
                                            random.random()], edgecolor='black', linewidth=1))

    ax.add_patch(Rectangle((0, 0), w, h, fill=False, edgecolor='black', linewidth=2))

    # Punti di inizio dei circuiti
    for x, y in circuits_pos:
        plt.scatter(x, y, color='black', edgecolors='black', s=20)

    plt.show()

def plot_solution(circuits_pos, chips_w, chips_h, w, h, rot_sol):
    fig, ax = plt.subplots(figsize=(7, 7))
    
    offset = 1
    plt.xlim([-offset, w + offset])
    plt.ylim([-offset, h + offset])
    plt.xticks(range(-offset, w + offset + 1))
    plt.yticks(range(-offset, h + offset + 1))
    ax.set_aspect('equal')

    # Disegna ogni circuito
    for i, (x, y) in enumerate(circuits_pos):
        # Se il circuito è ruotato, scambia larghezza e altezza
        width = chips_h[i] if rot_sol[i] else chips_w[i]
        height = chips_w[i] if rot_sol[i] else chips_h[i]

        ax.add_patch(Rectangle((x, y), width, height,
                               color=[random.random(), random.random(), random.random()],
                               linewidth=1))

    # Contorno della piastra
    ax.add_patch(Rectangle((0, 0), w, h, fill=False, edgecolor='black', linewidth=2))

    # Punti di inizio dei circuiti
    for x, y in circuits_pos:
        plt.scatter(x, y, color='black', edgecolors='black', s=20)

    plt.show()

def find_identical_circuits_with_count(chips_w, chips_h):
    """
    Trova gruppi di circuiti identici basati sulle loro dimensioni e conta il numero di circuiti in ogni gruppo.

    :param chips_w: Lista delle larghezze dei circuiti.
    :param chips_h: Lista delle altezze dei circuiti.
    :return: Un dizionario dove la chiave è una tupla (larghezza, altezza) e il valore è un'altra tupla (lista degli indici dei circuiti identici, conteggio dei circuiti).
    """
    circuit_dimensions = {}
    for idx, (w, h) in enumerate(zip(chips_w, chips_h)):
        if (w, h) in circuit_dimensions:
            circuit_dimensions[(w, h)].append(idx)
        else:
            circuit_dimensions[(w, h)] = [idx]

    # Crea un dizionario che include anche il conteggio dei circuiti in ogni gruppo
    identical_circuits_with_count = {dims: (indices, len(indices)) for dims, indices in circuit_dimensions.items() if len(indices) > 1}
    return identical_circuits_with_count

def write_file(w, n, x, y, circuits_pos, rot_sol, length, elapsed_time,  out_file):
    with open(out_file, 'w+') as f_out:
        f_out.write('{} {}\n'.format(w, length))
        f_out.write('{}\n'.format(n))

        for i in range(n):
            is_rotated = "1" if rot_sol[i] else "0"
            p_x,p_y = circuits_pos[i]
            f_out.write('{} {} {} {} {}\n'.format(x[i], y[i], p_x, p_y, is_rotated))
        f_out.write(f'{elapsed_time :.2f}' + 'sec')

def model_to_coordinates(model, p, w, l, n, r=None):
    # Create solution array
    solution = np.array([[[is_true(model[p[i][j][k]]) for k in range(n)] for j in range(w)] for i in range(l)])
    p_x_sol = []
    p_y_sol = []
    rot_sol = [False for i in range(n)]

    for k in range(n):
        y_ids, x_ids = np.nonzero(solution[:, :, k])
        x = np.min(x_ids)
        y = np.min(y_ids)
        p_x_sol.append(x)
        p_y_sol.append(y)
        if r is not None:
            rot_sol[k] = is_true(model[r[k]])
    return p_x_sol, p_y_sol, rot_sol


def print_circuit_info(circuits_pos, circuits,rot_sol,rotation=False):
    for k in range(len(circuits)):
        width, height = circuits[k]
        x, y = circuits_pos[k]
        if rotation:
            rotation_status = "T" if rot_sol[k] else "F"
            print(f"Circuit {k}: Width={width}, Height={height}, X={x}, Y={y}, R={rotation_status}")
        else:
            print(f"Circuit {k}: Width={width}, Height={height}, X={x}, Y={y}")

