import os
from typing import List, Tuple, Union
import pandas as pd

from utils.types_CP import CorrectSolution, Solution, StatusEnum


def save_statistics(out_path: str, solution:Solution, config=None):
    columns=["input_name","status","height","solve_time", "rotation"]
    if os.path.exists(out_path):
        df = pd.read_csv(out_path)
    else:
        df = pd.DataFrame(columns=columns)

    solution_vars = vars(solution).copy()
    solution_vars["status"] = StatusEnum(solution_vars["status"]).name
    if CorrectSolution(solution.status):
        values = [solution_vars[c] for c in columns]
    else:
        values = [solution_vars[c] if c in ["input_name","status"] else None for c in columns]
    values = [[v] if isinstance(v, list) else v for v in values]

    df = pd.concat([df, pd.DataFrame(dict(zip(columns, values)), index=[0])],ignore_index=True)
    df.to_csv(out_path, index=False)