## CP Instruction:
# Execute all the instances:

``` console
cd CP\src
python solve_cp_instances.py -m <model path> -i <instances folder> -o <output folder>
```

# Execute one single instance:
Enter on CP\src <br>
Open <b>Solver.py</b> <br>
In <b>main()</b> [line 25] modify: <br>
```python
model = <model path>
in_file = <path of instance file>
out_dir = <folder to save the output>
```
Run <b>Solver.py</b>

``` console
cd CP\src
python Solve_CP.py
```