import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle
from matplotlib.collections import PatchCollection
import numpy as np
from utils.CP_class import CorrectSolution,Solution


def plot_cmap(solution,path,rotation=None,cmap_name="Set3"):
    x,y = solution.width, solution.height
    n = solution.num_circuits
    circuits = solution.circuits
    coords = solution.coords
    fig = plt.figure(figsize=(x,y))
    ax = fig.add_subplot(111,aspect='equal')

    cmap = plt.cm.get_cmap(cmap_name, n)
    patches = []


    if rotation:

        for i in range(0,n):
            block_x = int(circuits[i][1] if solution.rotation[i] else circuits[i][0])
            block_y = int(circuits[i][0] if solution.rotation[i] else circuits[i][1])
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

def plot_solution(solution:Solution, plot_file:str):
    plot_cmap(
        solution.width,
        solution.height,
        solution.num_circuits,
        solution.circuits,
        solution.coords,
        plot_file,
        solution.rotation,
        "turbo_r"
    )
