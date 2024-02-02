import os
from typing import List, Tuple, Union
import pandas as pd

from utils.CP_class import CorrectSolution, Solution, Status_CP


def save_table(out_path: str, solution:Solution, config=None):
    columns=["input_name","status","height","time_solved", "rotation"]
    if os.path.exists(out_path):
        df = pd.read_csv(out_path)
    else:
        df = pd.DataFrame(columns=columns)

    solution_vars = vars(solution).copy()
    solution_vars["status"] = Status_CP(solution_vars["status"]).name
    if CorrectSolution(solution.status):
        values = [solution_vars[c] for c in columns]
    else:
        values = [solution_vars[c] if c in ["input_name","status"] else None for c in columns]
    values = [[v] if isinstance(v, list) else v for v in values]

    df = pd.concat([df, pd.DataFrame(dict(zip(columns, values)), index=[0])],ignore_index=True)
    df.to_csv(out_path, index=False)