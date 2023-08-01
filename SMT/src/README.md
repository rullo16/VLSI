## SMT Instruction:
# Execute all instances:

``` console
cd SMT\src
pyhton Solve_SMT.py [-h] [-i <instances folder>] [-o <output folder>] [-r use model rotation]
```

# Execute a single instance:
Enter on SMT\src <br>
Open the model [<b>model_final</b> | <b>model rotation</b>] you want to run <br>
In <b>main()</b> [last method] modify: <br>
```python
in_file = <path instance file>
out_dir = <folder to save the output>
```
Run the model

``` console
cd SMT\src
python <model file name>
```