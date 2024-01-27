from z3 import *
import numpy as np
import time
from itertools import combinations
from utils.types_SMT import CorrectSolution, Solution, StatusEnum
from z3 import *
import os

# We append to the string all the script to avoid writing it manually
def build_model(W, N, x, y, logic="LIA"):
    # Lower and upper bounds for the height
    l_low = max(max(y), math.ceil(sum([x[i]*y[i] for i in range(N)]) / W))
    l_up = sum([max(y[i], x[i]) for i in range(N)])
    lines = []

    # Options
    lines.append(f"(set-logic {logic})")

    # Variables declaration
    lines += [f"(declare-fun pos_x{i} () Int)" for i in range(N)]
    lines += [f"(declare-fun pos_y{i} () Int)" for i in range(N)]
    lines += [f"(declare-fun rot{i} () Bool)" for i in range(N)]
    lines += [f"(declare-fun w_real{i} () Int)" for i in range(N)]
    lines += [f"(declare-fun h_real{i} () Int)" for i in range(N)]

    lines.append("(declare-fun l () Int)")

    # Domain of variables
    coord_up = min(x + y)
    lines += [f"(assert (and (>= pos_x{i} 0) (<= pos_x{i} {W-coord_up})))" for i in range(N)]
    lines += [f"(assert (and (>= pos_y{i} 0) (<= pos_y{i} {l_up-coord_up})))" for i in range(N)]
    lines += [f"(assert (ite rot{i} (= w_real{i} {y[i]}) (= w_real{i} {x[i]})))" for i in range(N)]
    lines += [f"(assert (ite rot{i} (= h_real{i} {x[i]}) (= h_real{i} {y[i]})))" for i in range(N)]

    lines.append(f"(assert (and (>= l {l_low}) (<= l {l_up})))")

    # Boundary constraints
    lines += [f"(assert (and (<= (+ pos_x{i} w_real{i}) {W}) (<= (+ pos_y{i} h_real{i}) l)))" for i in range(N)]

    # Non-Overlap constraints, at least one needs to be satisfied
    for i in range(N):
        for j in range(N):
            if i < j:
                lines.append(f"(assert (or (<= (+ pos_x{i} w_real{i}) pos_x{j}) "
                                         f"(<= (+ pos_y{i} h_real{i}) pos_y{j}) "
                                         f"(>= (- pos_x{i} w_real{j}) pos_x{j}) "
                                         f"(>= (- pos_y{i} h_real{j}) pos_y{j})))"
                )

    # Cumulative constraints 
    for w in y:
        sum_var = [f"(ite (and (<= pos_y{i} {w}) (< {w} (+ pos_y{i} h_real{i}))) w_real{i} 0)" for i in range(N)]
        lines.append(f"(assert (<= (+ {' '.join(sum_var)}) {W}))")

    for h in x:
        sum_var = [f"(ite (and (<= pos_x{i} {h}) (< {h} (+ pos_x{i} w_real{i}))) h_real{i} 0)" for i in range(N)]
        lines.append(f"(assert (<= (+ {' '.join(sum_var)}) l))")
    
    # Symmetry breaking same size 
    for i in range(N):
        for j in range(N):
            if i < j:
                lines.append(f"(assert (ite (and (= {x[i]} {x[j]}) (= {y[i]} {y[j]}))"
                                        f" (and (<= pos_x{i} pos_x{j}) (<= pos_y{i} pos_y{j})) true))")
    
    # Symmetry breakings for rotation
    lines += [f"(assert (= rot{i} false))" for i in range(N) if x[i] == y[i]]
    lines += [f"(assert (= rot{i} false))" for i in range(N) if y[i] > W]

    # Symmetry breaking that inserts the circuit with the maximum area in (0, 0)
    areas = [x[i]*y[i] for i in range(N)]
    max_area_ind = areas.index(max(areas))
    lines.append(f"(assert (= pos_x{max_area_ind} 0))")
    lines.append(f"(assert (= pos_y{max_area_ind} 0))")

    lines.append("(check-sat)")
    for i in range(N):
        lines.append(f"(get-value (pos_x{i}))")
        lines.append(f"(get-value (pos_y{i}))")
        lines.append(f"(get-value (rot{i}))")
    lines.append("(get-value (l))")
    
    with open(f"./model_rot.smt2", "w+") as f:
        for line in lines:
            f.write(line + '\n')

    return l_low, l_up