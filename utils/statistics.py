import os
from typing import List, Tuple, Union
import pandas as pd

from utils.types import CorrectSolution, Solution, StatusEnum


def save_statistics(path:str, solution: Solution, configuration=None):
    columns = ['input_name','status','height', 'solve_time', 'rotation','pos_x','pos_y','configuration']
    if os.path.exists(path):
        df = pd.read_csv(path)
    else:
        df = pd.DataFrame(columns=columns)
    
    solution.configuration = configuration

    solution_vars = vars(solution).copy()
    solution_vars['status'] = StatusEnum(solution_vars['status']).name
    if CorrectSolution(solution.status):
        vals = [solution_vars[c.split("_")[0]][c.split("_")[1]]
        if c in ["pos_x","pos_y"]
        else solution_vars[c]
        for c in columns
        ]
    else:
        vals = [solution_vars[c] if c in ['input_name','status'] else None for c in columns]
    
    vals = [[v] if isinstance(v,list) else v for v in vals]

    df = pd.concat([df, pd.DataFrame(dict(zip(columns,vals)),index=[0])], ignore_index=True)
    df.to_csv(path, index=False)
