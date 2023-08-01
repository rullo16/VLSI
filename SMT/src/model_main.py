import os
from z3 import *
import numpy as np
import time
from itertools import combinations

def compute_length(x, y, w):
    max_l = sum(y)
    block_width = w // max(x)
    max_l = -(max_l // - block_width)
    max_l = max(y) if max_l < max(y) else max_l
    return max_l


def open_data(filename):
    with open(filename, 'r') as in_file:
        lines = in_file.read().splitlines()

        w = lines[0]
        n = lines[1]
        x = []
        y = []

        for i in range(int(n)):
            split = lines[i + 2].split(' ')
            x.append(int(split[0]))
            y.append(int(split[1]))
        h = compute_length(x, y, int(w))

        len_w = len(str(w))
        magnitude_w = 10 ** len_w

        return int(w), int(n), x, y, h, magnitude_w

def z3_maximum(vector):
    maximum = vector[0]
    for value in vector[1:]:
        maximum = If(value > maximum, value,maximum)
    return maximum


def z3_cumulative(start, duration, resources, total):
    decomposition = []
    for u in resources:
        decomposition.append(sum([
            If(And(start[i] <= u, u<start[i]+duration[i]),resources[i],0) 
            for i in range(len(start))])<= total)
    return decomposition

def write_output(w, n, x, y, pos_x, pos_y, length, output_file, elapsed_time):
    with open(output_file, 'w+') as out_file:
        out_file.write('{} {}\n'.format(w, length))
        out_file.write('{}\n'.format(n))

        for i in range(n):
            out_file.write('{} {} {} {}\n'.format(x[i], y[i], pos_x[i], pos_y[i]))
        out_file.write('{}'.format(elapsed_time))


def solver(input_file, output_dir):
    instance_name = input_file.split('\\')[-1] if os.name == 'nt' else input_file.split('/')[-1]
    instance_name = instance_name[:len(instance_name) - 4]
    output_file = os.path.join(output_dir, instance_name + '-out.txt')

    w, n, x, y, max_l, w_mag = open_data(input_file)

    # Circuit with highest value
    index = np.argmax(np.asarray(y))

    # Circuit Area
    area = [x[i] * y[i] for i in range(n)]

    # Variables

    pos_x = [Int("pos_x_%s" % str(i + 1)) for i in range(n)]
    pos_y = [Int("pos_y_%s" % str(i + 1)) for i in range(n)]

    length = z3_maximum([pos_y[i] + y[i] for i in range(n)])

    # plate bounds
    plate_x = [pos_x[i] >= 0 for i in range(n)]
    plate_y = [pos_y[i] >= 0 for i in range(n)]

    # Differentiate all coordinates
    alldifferent = [Distinct([w_mag * pos_y[i] + pos_x[i]]) for i in range(n)]

    # Cumulative constraints
    cumulative_x = z3_cumulative(pos_x, x, y, max_l)
    cumulative_y = z3_cumulative(pos_y, y, x, w)

    # max width
    max_w = [z3_maximum([pos_x[i] + x[i] for i in range(n)]) <= w]

    # max height
    max_h = [z3_maximum([pos_y[i] + y[i] for i in range(n)]) <= max_l]

    # Avoid overlapping
    overlapping = []
    for (i, j) in combinations(range(n), 2):#combination returns successive r-length combinations of elements in iterable
        overlapping.append(Or(pos_x[i] + x[i] <= pos_x[j], pos_x[j] + x[j] <= pos_x[i],
                              pos_y[i] + y[i] <= pos_y[j], pos_y[j] + y[j] <= pos_y[j]))

    # Symmetries
    symmetry = [And(pos_x[index] == 0, pos_y[index] == 0)]

    # move circuits to the left
    move_left = [sum([If(pos_x[i]<=w//2, area[i],0) for i in range(n)]) >= sum([If(pos_x[i]>w//2, area[i],0) for i in range(n)])]

    #Optimizer

    optimizer = Optimize()
    optimizer.add(plate_x+plate_y+alldifferent+overlapping+cumulative_x+cumulative_y+max_w+max_h+symmetry+move_left)
    optimizer.minimize(length)

    #Execution time

    timeout = 300000
    optimizer.set("timeout",timeout)

    #Solving
    print(f'{output_file}:', end='\t', flush=True)
    starting_time = time.time()

    p_x = []
    p_y = []
    if optimizer.check() == sat:
        model = optimizer.model()
        elapsed_time = time.time() - starting_time
        print(f'{elapsed_time * 1000:.1f} ms')
        #Get var values
        for i in range(n):
            p_x.append(model.evaluate(pos_x[i]).as_string())
            p_y.append(model.evaluate(pos_y[i]).as_string())
        solution_len = model.evaluate(length).as_string()

        write_output(w,n,x,y,p_x,p_y,solution_len, output_file, elapsed_time)
    else:
        elapsed_time = time.time()-starting_time
        print(f'{elapsed_time*1000:.1f} ms')
        print("No Solution")




def main():
    input = "../../data/instances/ins-1.txt"
    output = "../out"
    solver(input, output)


if __name__ == '__main__':
    main()
