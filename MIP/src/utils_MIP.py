import matplotlib.pyplot as plt
import os
import random
import numpy as np
import gurobipy as gp

# Read an instance
def read_instance(file_path):
    with open(file_path, 'r') as file:
        file_name = os.path.basename(file.name)
        ins_n, _ = os.path.splitext(file_name)
        w = int(file.readline().strip())
        n = int(file.readline().strip())
        circuits = []
        for _ in range(n):
            wi, hi = map(int, file.readline().strip().split())
            circuits.append((wi, hi))
    return w, n, circuits, ins_n

# Get the solution
def get_sol(model,n,rotation):
    x = {}
    y = {}
    rot = {}
    for i in range(n):
        x[i] = int(model.getVarByName(f"x_{i}").X)
        y[i] = int(model.getVarByName(f"y_{i}").X)
        if rotation:
            rot[i] = int(model.getVarByName(f"rotation_{i}").X)
    h = int(model.ObjVal)

    return x, y, h, rot

# Write the solution
def write_sol(write_path, w, h, n, wi_dict, hi_dict, x_dict, y_dict,ins_n,rotation):
    if rotation:
        file_name = f"{ins_n}_rot_sol.txt"
    else:
        file_name = f"{ins_n}_sol.txt"
    path = write_path + file_name
    with open(path, 'w') as file:
        file.write(f"{w} {h}\n")
        file.write(f"{n}\n")

        for i in range(n):
            file.write(f"{wi_dict[i]} {hi_dict[i]} {x_dict[i]} {y_dict[i]}\n")          

# Plot the solution
def generate_random_color():
    return "#{:06x}".format(random.randint(0, 0xFFFFFF))
def plot_blocks(plate_width, plate_height, num_blocks, wis, his, x, y, ins_n, rotation, write_path=None):
    fig, ax = plt.subplots()
    
    # Plot the plate
    ax.add_patch(plt.Rectangle((0, 0), plate_width, plate_height, fill=None, edgecolor='black'))

    # Plot each block
    for i in range(num_blocks):
        ax.add_patch(plt.Rectangle((x[i], y[i]), wis[i], his[i], fill=True, edgecolor='black', facecolor=generate_random_color()))

    # Set axis limits
    ax.set_xlim(0, plate_width)
    ax.set_ylim(0, plate_height)

    plt.gca().set_aspect('equal', adjustable='box')  # Equal aspect ratio for x and y axes
    plt.xlabel('Width')
    plt.ylabel('Height')
    plt.title(f'VLSI Block Placement - {ins_n}')
    plt.grid(True)

    # Save the plot if save_path is provided
    if rotation:
        file_name = f"{ins_n}_rot_sol.png"
    else:
        file_name = f"{ins_n}_sol.png"
    path = write_path + file_name
    if write_path:
        plt.savefig(path, bbox_inches='tight')
    #plt.show()
        

import numpy as np
import matplotlib.pyplot as plt

def plot_histogram(times, rot_times, ins_n, write_path=None):
    # Check if the input lists have the same length
    if len(times) != len(rot_times) or len(times) != len(ins_n):
        raise ValueError("Input lists must have the same length.")
    
    plt.figure(figsize=(12, 6))  # Set wider width

    # Set up positions for bars on x-axis
    ind = np.arange(len(ins_n))

    # Plotting bars for times
    plt.bar(ind, times, width=0.4, label='Base', color=np.where(np.array(times) >= 300, 'red', 'blue'))

    # Plotting bars for rot_times
    plt.bar(ind + 0.4, rot_times, width=0.4, label='Rotation', color=np.where(np.array(rot_times) >= 300, 'red', 'orange'))

    # Customize plot
    plt.xlabel('Instances')
    plt.ylabel('Time')
    plt.title('Runtimes for each Instance')
    plt.xticks(ind + 0.2, ins_n)  # Adjust x-axis ticks to center instance names
    plt.xticks(rotation='vertical')
    plt.legend()

    plt.yscale('log')  # Set y-axes on a log scale

    if write_path:
        path = write_path + "times_histogram.png"
        plt.savefig(path, bbox_inches='tight')
        
    # Show the plot
    #plt.show()
        
def save_optimization_results(model, write_path, ins_n, rotation):
    if rotation:
        file_name = f"{ins_n}_rot_log.txt"
        model_name = f"{ins_n}_rot_model.lp"
    else:
        file_name = f"{ins_n}_log.txt"
        model_name = f"{ins_n}_model.lp"
    # Get optimization status
    status = model.Status

    # Get objective value
    obj_value = model.ObjVal

    # Get runtime
    runtime = model.Runtime

    # Get the number of feasible solutions
    num_solutions = model.SolCount

    # Save optimization results to a text file
    path = write_path + file_name
    with open(path, 'w') as file:
        if status == gp.GRB.OPTIMAL:
            file.write("Optimal solution found.\n")
        elif status == gp.GRB.INFEASIBLE:
            file.write("Model is infeasible.\n")
        elif status == gp.GRB.UNBOUNDED:
            file.write("Model is unbounded.\n")
        elif status == gp.GRB.UNDEFINED:
            file.write("Model is undefined.\n")
        elif status == gp.GRB.INF_OR_UNBD:
            file.write("Model is infeasible or unbounded.\n")
        else:
            file.write(f"Optimization ended with status {status}.\n")
        file.write(f"Objective Value: {obj_value}\n")
        file.write(f"Runtime: {runtime} seconds\n")
        file.write(f"Number of Solutions: {num_solutions}\n")
    # Save the Gurobi model to an LP file
    model_path = write_path + model_name
    model.write(model_path)

import os
import re

import os
import re

def extract_values_from_logs(folder_path):
    # Initialize lists to store values
    objective_values = []
    runtimes = []

    # Get the list of files sorted by the specified key
    sorted_files = sorted(os.listdir(folder_path), key=lambda x: int(x.split('-')[1].split('_')[0]))

    # Iterate through each file in the sorted list
    for filename in sorted_files:
        if filename.endswith(".txt"):
            file_path = os.path.join(folder_path, filename)

            # Read the content of the file
            with open(file_path, 'r') as file:
                content = file.read()

                # Use regular expressions to extract values
                objective_match = re.search(r'Objective Value: (\d+\.\d+)', content)
                runtime_match = re.search(r'Runtime: (\d+\.\d+) seconds', content)

                # Append values to respective lists
                if objective_match:
                    objective_values.append(float(objective_match.group(1)))
                if runtime_match:
                    runtimes.append(float(runtime_match.group(1)))

    return objective_values, runtimes
