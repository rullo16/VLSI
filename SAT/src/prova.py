import numpy as np

h,w,n = 3,4,5
solution = np.arange(60).reshape(h, w, n)

print(solution)

p_x_sol = []
p_y_sol = []
for k in range(n):
        y_ids, x_ids = np.nonzero(solution[:, :, k])
        print(y_ids,x_ids)
        x = np.min(x_ids)
        y = np.min(y_ids)
        p_x_sol.append(x)
        p_y_sol.append(y)
        print(p_x_sol,p_y_sol)

arr = np.array([[0, 2, 3], [0, 0, 6], [7, 0, 0]])

print("Original array:")
print(arr)

# Get the indices of non-zero elements
indices = np.nonzero(arr)

print("\nIndices of non-zero elements:")
print(indices)