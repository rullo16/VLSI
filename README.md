# VLSI Project

This repository contains the code for the VLSI project which aims at optimizing how circuits are placed on a plate

## Table of Contents
- [Introduction](#introduction)
- [Requirements](#requirements)
- [Usage](#usage)
  - [Execute All Instances](#execute-all-instances)
  - [Execute a Single Instance](#execute-a-single-instance)
- [Folder Structure](#folder-structure)

## Introduction

This project is composed of 4 parts each of which implements a different technique for solving the problem

## Requirements

Before running the solver, make sure you have the following installed on your system:
- Python 3.x: The solver is written in Python, so you need to have Python 3.x installed.
- Z3 Solver: The SMT approach uses the Z3 solver. You can install it via pip:
```console
pip install z3-solver
```
You can also create a new conda environment by using the env.yml file

## Usage

To run the project enter the desired folder based on the technique you want to use and read the README.

## Folder Structure
The folder structure of the project is as follows:
```csharp
VLSI/
  ├── CP/
  ├── MIP/
  ├── SAT/
  ├── SMT/
  ├── data/
  │    └── instances/
  ├── src/
  │    ├── model_main.py
  │    ├── model_rotation.py
  │    └── Solve_SMT.py
  ├── Report.pdf
  ├── env.yml
  └── README.md
```
* CP/: contains all files to run Constraint Programming
* SAT/: contains all files to run SAT
* SMT/: contains all files to run the Satisfiability Modulo Theory
* MIP/: contains all files to run MIP
* data/instances/: Contains input instances.
