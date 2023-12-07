import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle
from matplotlib.collections import PatchCollection
import numpy as np
from utils.types import CorrectSolution,Solution

def plot_solution(x, y, n, circuits, coords, path, cmap_name="Set3"):
    image = np.zeros((x,y))
    for i in range(0,n):
        block_x = int(circuits[i][0])
        block_y = int(circuits[i][1])
        pos_x = int(coords['pos_x'][i])
        pos_y = int(coords['pos_y'][i])

        image[pos_x:pos_x+block_x,pos_y:pos_y+block_y] = (i+1)

    cmap = plt.cm.get_cmap(cmap_name, n)
    fig = plt.figure(figsize=(x,y))
    plt.grid(visible=True)
    plt.xticks(np.arange(0,x+1,1))
    plt.yticks(np.arange(0,y+1,1))
    plt.imshow(image, origin='lower', extent=[0,x,0,y], cmap=cmap)
    plt.savefig(path,bbox_inches='tight')
    plt.close(fig)

def plot_cmap(x,y,n,circuits,coords,path,rotation=None,cmap_name="Set3"):
    fig = plt.figure(figsize=(x,y))
    ax = fig.add_subplot(111,aspect='equal')

    cmap = plt.cm.get_cmap(cmap_name, n)
    patches = []


    if rotation:

        for i in range(0,n):
            block_x = int(circuits[i][1])
            block_y = int(circuits[i][0])
            pos_x = int(coords['pos_x'][i])
            pos_y = int(coords['pos_y'][i])
            
            patches.append(
                Rectangle((pos_x,pos_y),block_x,block_y,ec='k', linewidth=1,facecolor=cmap(i)))
    else:
        for i in range(0,n):
            block_x = int(circuits[i][0])
            block_y = int(circuits[i][1])
            pos_x = int(coords['pos_x'][i])
            pos_y = int(coords['pos_y'][i])
            
            patches.append(
                Rectangle((pos_x,pos_y),block_x,block_y,ec='k', linewidth=1,facecolor=cmap(i)))
            
    ax.add_collection(PatchCollection(patches,match_original=True))

    plt.grid(visible=True)
    plt.xticks(np.arange(0,x+1,1))
    plt.yticks(np.arange(0,y+1,1))
    plt.savefig(path,bbox_inches='tight')
    plt.close(fig)

<<<<<<< HEAD
def plot_solution(solution:Solution, plot_file:str):
    if CorrectSolution(solution.status):
        plot_cmap(
            solution.width,
            solution.height,
            solution.n_circuits,
            solution.circuits,
            solution.coords,
            plot_file,
            solution.rotation,
            "turbo_r"
        )
=======
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
>>>>>>> origin/master
