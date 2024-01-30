from utils_sat import *
import numpy as np

in_dir_default= "SAT/out/out_default"
in_dir_rotation=  "SAT/out/out_rotation"
#get_report(in_dir_default, in_dir_rotation)

import matplotlib.pyplot as plt
# Create a 224x8x8 grid
grid = np.zeros((2, 8, 8))
# Select the first 8x8 grid
grid_0 = grid[0]

# Plot the grid
plt.imshow(grid_0, cmap='gray')
plt.axis('off')
plt.show()