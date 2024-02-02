import gurobipy as gp
from gurobipy import GRB
import utils_MIP

import os
import re

folder_path =  r'your\instances\folder\here'
write_path = r'your\write\folder\here\\'

def run_vlsi_model(read_path, write_path, rotation=False):
    # Params
    w, n, circuits, ins_n = utils_MIP.read_instance(read_path)
    area_min = sum([wi*hi for (wi,hi) in circuits])
    hmin = int(area_min/w)
    hmax = sum([hi for (_,hi) in circuits])
    area_max = hmax*w

    c_areas = [w * h for w, h in circuits]
    big_c = c_areas.index(max(c_areas))
    
    wist, hist = zip(*circuits)
    wis = list(wist)
    his = list(hist)
    min_wi = min(wis)
    min_hi = min(his)

    # Model init
    if rotation:    
        vlsi = gp.Model("VLSI_Design_rot")
    else:
        vlsi = gp.Model("VLSI_Design")

    vlsi.setParam("TimeLimit", 300)
    vlsi.setParam("Symmetry",-1)

    # Decision variables
    # Coordinates of the bottom left corner
    x = {}
    y = {}
    for i in range(n):
            x[i] = vlsi.addVar(vtype=GRB.INTEGER, lb=0, ub=w - min_wi, name=f"x_{i}")
            y[i] = vlsi.addVar(vtype=GRB.INTEGER, lb=0, ub=hmax - min_hi, name=f"y_{i}")

    # Height (to be minimized)
    h = vlsi.addVar(vtype=GRB.INTEGER, lb=hmin, ub=hmax, name="height")
    # Binary variables
    delta = {}
    for i in range(n):
        for j in range(n):
            for k in range(4):
                    var_name = f'delta_{i}_{j}_{k}'
                    delta[i, j, k] = vlsi.addVar(vtype=GRB.BINARY, name=var_name)
    # Rotation flag
    rot = {}
    if rotation:
        for i in range(n):
            rot[i] = vlsi.addVar(vtype=GRB.BINARY, name=f"rotation_{i}")

        # Constraint reduction for square blocks
        for i in range(n):
            if wis[i] == his[i]:
                vlsi.addConstr(rot[i] == 0, name=f'square_block_{i}')

    # Constraints
    #Symmetry breaking
    vlsi.addConstr(x[big_c] == 0, name='symmetry_break_x')
    vlsi.addConstr(y[big_c] == 0, name='symmetry_break_y')
    
    # Area Boundaries
    vlsi.addConstr(w * h >= area_min, name = "area_low")
    vlsi.addConstr(w * h <= area_max, name = "area_up")

    if rotation:
        # Not exceeding dimensions of the plate
        for i in range(n):
            vlsi.addConstr(x[i] + (his[i] * rot[i] + wis[i] * (1 - rot[i])) <= w, name=f'w_overflow_{i}')
            vlsi.addConstr(y[i] + (wis[i] * rot[i] + his[i] * (1 - rot[i])) <= h, name=f'h_overflow_{i}')

        # No overlap
        for i in range(n):
            for j in range(i + 1, n):
                vlsi.addConstr(x[i] + (his[i] * rot[i] + wis[i] * (1 - rot[i])) <= x[j] + w * delta[i, j, 0], name=f"hc1_{i}_{j}")
                vlsi.addConstr(y[i] + (wis[i] * rot[i] + his[i] * (1 - rot[i])) <= y[j] + h * delta[i, j, 1], name=f"vc1_{i}_{j}")
                vlsi.addConstr(x[j] + (his[j] * rot[j] + wis[j] * (1 - rot[j])) <= x[i] + w * delta[i, j, 2], name=f"hc2_{i}_{j}")
                vlsi.addConstr(y[j] + (wis[j] * rot[j] + his[j] * (1 - rot[j])) <= y[i] + h * delta[i, j, 3], name=f"vc2_{i}_{j}")
    else:
        # Not exceeding dimensions of the plate
        for i in range(n):
            vlsi.addConstr(x[i] + wis[i] <= w, name=f'w_overflow_{i}')
            vlsi.addConstr(y[i] + his[i] <= h, name=f'h_overflow_{i}')

        # No overlap
        for i in range(n):
            for j in range(i+1, n):
                vlsi.addConstr(x[i] + wis[i] <= x[j] + w * delta[i, j, 0], name=f"hc1_{i}_{j}")
                vlsi.addConstr(y[i] + his[i] <= y[j] + h * delta[i, j, 1], name=f"vc1_{i}_{j}")
                vlsi.addConstr(x[j] + wis[j] <= x[i] + w * delta[i, j, 2], name=f"hc2_{i}_{j}")
                vlsi.addConstr(y[j] + his[j] <= y[i] + h * delta[i, j, 3], name=f"vc2_{i}_{j}")

    for i in range(n):
        for j in range(n):
            vlsi.addConstr(gp.quicksum(delta[i, j, k] for k in range(4)) <= 3, name=f"no_overlap_{i}_{j}")

    # Objective
    vlsi.setObjective(h, GRB.MINIMIZE)

    vlsi.update()

    # Optimize the model
    vlsi.optimize()
    elapsed_time = vlsi.Runtime
    x_s, y_s, h_s, rot_s = utils_MIP.get_sol(vlsi,n,rotation)

    if rotation:
        for i in range(n):
            if rot_s[i]:
                # Swap values
                wis[i], his[i] = his[i], wis[i]

    utils_MIP.write_sol(write_path, w, h_s, n, wis, his, x_s, y_s, ins_n, rotation)
    print("Elapsed time:", elapsed_time)
    utils_MIP.save_optimization_results(vlsi, write_path, ins_n, rotation)
    utils_MIP.plot_blocks(w, h_s, n, wis, his, x_s, y_s, ins_n, rotation, write_path)

    return elapsed_time, ins_n

times = []
rot_times = []
ins_ns = []

files = sorted(os.listdir(folder_path), key=lambda x: int(x.split('-')[1].split('.')[0]))
for filename in files:
    file_path = os.path.join(folder_path, filename)
    if os.path.isfile(file_path):
        elapsed_time, inst = run_vlsi_model(file_path, write_path, rotation=False)
        times.append(elapsed_time)
        elapsed_time,_ = run_vlsi_model(file_path, write_path, rotation=True)
        rot_times.append(elapsed_time)

utils_MIP.plot_histogram(times, rot_times, ins_ns, write_path)


