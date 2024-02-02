# Mixed Integer Programming (MIP) Project

This repository contains the code for a Mixed Integer Programming (MIP) project that solves instances of a circuit placement problem using python, the gurobipy library and the Gurobi solver. 

## Table of Contents
- [Introduction](#introduction)
- [Requirements](#requirements)
- [Usage](#usage)

## Introduction

This is a solver for the Circuit Placement Problem using the Mixed Integer Programming (MIP) approach. The solver aims to optimize the placement of circuits on a rectangular plate while satisfying certain constraints.

## Requirements

Before running the solver, make sure you have the following installed on your system:
- Python 3.x: The solver is written in Python, so you need to have Python 3.x installed.
- Gurobi Solver: The MIP approach uses the Gurobi solver. You need a license in order to use and download it, please refer to:
- Gurobipy library: You can install it via pip:
```console
pip install gurobipy
```
## Usage

### Execute All Instances
To execute all instances and generate solutions for the circuit placement problem, follow these steps:

1. Open the "vlsi_design_MIP.py" file, and enter the path to the folder with the instances to be processed in "folder_path". Enter also the path to the folder where you want the solutions to be saved in "write_path", include a final "\".
2. Run the "vlsi_design_MIP.py" script from the terminal.



