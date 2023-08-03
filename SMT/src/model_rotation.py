from z3 import *
import numpy as np
import model_main
import time
from itertools import combinations
from z3 import *
import os

def write_output(w, n, x, y, pos_x, pos_y, rotation, length, output_file, elapsed_time):
    with open(output_file, 'w+') as out_file:
        out_file.write('{} {}\n'.format(w, length))
        out_file.write('{}\n'.format(n))

        for i in range(n):
            rotated = "rotated" if rotation else ""
            out_file.write('{} {} {} {}\n'.format(x[i], y[i], pos_x[i], pos_y[i]))
        out_file.write('{}'.format(elapsed_time))

def solve_instance(input_file, output_dir):
    # Extract instance name from the input file path
    instance_name = os.path.splitext(os.path.basename(input_file))[0]
    output_file = os.path.join(output_dir, instance_name + '-out.txt')

    # Load instance data
    w, n, x, y, max_l, w_mag = model_main.open_data(input_file)

    # Circuit with highest value
    index = np.argmax(np.asarray(y))

    # Circuit Area
    area = [x[i] * y[i] for i in range(n)]

    # Variables
    pos_x = [Int("pos_x_%s" % str(i + 1)) for i in range(n)]
    pos_y = [Int("pos_y_%s" % str(i + 1)) for i in range(n)]

    # Rotation
    rotation = [Bool("rot_%s" % str(i+1)) for i in range(n)]

    # Rotated dimensions
    rot_x = [If(And(x[i] != y[i], rotation[i]), y[i], x[i]) for i in range(n)]
    rot_y = [If(And(x[i] != y[i], rotation[i]), x[i], y[i]) for i in range(n)]

    # Define the length as the maximum y-coordinate among the circuits
    length = model_main.z3_maximum([pos_y[i] + y[i] for i in range(n)])

    # Plate bounds
    plate_x = [pos_x[i] >= 0 for i in range(n)]
    plate_y = [pos_y[i] >= 0 for i in range(n)]

    # Bounds for measures
    bound_width = [And(rot_x[i] >= 1, rot_x[i] <= w) for i in range(n)]
    bound_height = [And(rot_y[i] >= 1, rot_y[i] <= max_l) for i in range(n)]

    # Differentiate all coordinates
    alldifferent = [Distinct([w_mag * pos_y[i] + pos_x[i]]) for i in range(n)]

    # Cumulative constraints
    cumulative_x = model_main.z3_cumulative(pos_x, x, y, max_l)
    cumulative_y = model_main.z3_cumulative(pos_y, y, x, w)

    # Max width
    max_w = [model_main.z3_maximum([pos_x[i] + x[i] for i in range(n)]) <= w]

    # Max height
    max_h = [model_main.z3_maximum([pos_y[i] + y[i] for i in range(n)]) <= max_l]

    # Avoid overlapping
    overlapping = []
    for (i, j) in combinations(range(n), 2):
        overlapping.append(Or(pos_x[i] + rot_x[i] <= pos_x[j], pos_x[j] + rot_x[j] <= pos_x[i],
                              pos_y[i] + rot_y[i] <= pos_y[j], pos_y[j] + rot_y[j] <= pos_y[j]))

    # Symmetries
    symmetry = [And(pos_x[index] == 0, pos_y[index] == 0)]

    # Move circuits to the left
    move_left = [sum([If(pos_x[i] <= w//2, area[i], 0) for i in range(n)]) >= sum([If(pos_x[i] > w//2, area[i], 0) for i in range(n)])]

    # Optimizer
    optimizer = Optimize()
    optimizer.add(plate_x + plate_y + alldifferent + overlapping + cumulative_x + cumulative_y +
                  max_w + max_h + symmetry + bound_height + bound_width + move_left)
    optimizer.minimize(length)

    # Execution time
    timeout = 300000
    optimizer.set("timeout", timeout)

    # Solving
    print(f'{output_file}:', end='\t', flush=True)
    starting_time = time.time()

    p_x, p_y, r = [], [], []
    if optimizer.check() == sat:
        model = optimizer.model()
        elapsed_time = time.time() - starting_time
        print(f'{elapsed_time * 1000:.1f} ms')
        # Get variable values
        for i in range(n):
            p_x.append(model.evaluate(pos_x[i]).as_string())
            p_y.append(model.evaluate(pos_y[i]).as_string())
            r_val = model[rotation[i]]
            if r_val:
                r.append(r_val)
            else:
                r.append(False)
        solution_len = model.evaluate(length).as_string()

        write_output(w, n, x, y, p_x, p_y, r, solution_len, output_file, elapsed_time)
    elif optimizer.reason_unknown() == "timeout":
        elapsed_time = time.time() - starting_time
        print(f'{elapsed_time * 1000:.1f} ms')
        print("Timeout")
    else:
        elapsed_time = time.time() - starting_time
        print(f'{elapsed_time * 1000:.1f} ms')
        print("UNSATISFIABLE")

def main():
    input_file = "../../data/instances/ins-8.txt"
    output_dir = "../out/out_rotation"
    solve_instance(input_file, output_dir)

if __name__ == '__main__':
    main()
