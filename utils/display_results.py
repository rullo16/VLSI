import numpy as np
import matplotlib.pyplot as plt
import os

def retrieve_data(dir_list, num_instances):
    #dir_list is the path of directories having instances
    #num_instances is the maximum number of instances solved

    results = np.zeros((len(dir_list),num_instances))

    dir_index = 0

    for dir in dir_list:
        for inst_name in os.listdir(dir):
            file = os.path.join(dir, inst_name)

            with open(file, 'r') as f_in:
                lines = f_in.read().splitlines()
                elapsed_time = float(lines[-1])

                inst_ind = int(inst_name[4:-8])

                results[dir_index][inst_ind-1] = elapsed_time
        dir_index = dir_index+1

    return results

def filter_solved_instances(result):
    solved = 0
    solved_insts = []
    insts = []

    for j in range(result.shape[1]):
        for i in range(result.shape[0]):
            if result[i][j]>0:
                solved += 1
                insts.append(j)
                solved_insts.append(str(j+1))
                break

    real_result = np.zeros((result.shape[0], solved))

    j = 0
    for ins in insts:
        real_result[:,j] = result[:,ins]
        j += 1

    return real_result, solved_insts

def compute_pos(pos,tot,idx,len):
    return pos-tot/2+len/2+idx*len

def bar_chart(result,ins_labels, col_labels, x_label,y_label,title):
    
    col_space=22

    x = np.arange(result.shape[1]*col_space, step=col_space)

    tot_width = (col_space-5)
    width = tot_width / result.shape[0]

    fig, axs = plt.subplots()

    rectangles = []

    for dir_idx in range(result.shape[0]):
        rectangles.append(axs.bar(compute_pos(x, tot_width, dir_idx,width), result[dir_idx][:],width,label=col_labels[dir_idx]))

    axs.set_xlabel(x_label)
    axs.set_ylabel(y_label)
    axs.set_yscale('log')
    axs.set_title(title)
    axs.set_xticks(x)
    axs.set_xticklabels(ins_labels)
    axs.legend()

    plt.show()

def main():

    col_names = ['default','rotation']
    #directories = ["../SMT/out/out_default","../SMT/out/out_rotation"]
    directories = ["../CP/out/symmetries_model", "../CP/out/rotation_model"]
    num = 40

    results = retrieve_data(directories,num)
    real_res, inst_names = filter_solved_instances(results)
    x_label = "Instance"
    y_label = "Time in seconds"
    title = "Comparison among different CP models"

    bar_chart(real_res, inst_names, col_names,x_label,y_label,title)

main()
