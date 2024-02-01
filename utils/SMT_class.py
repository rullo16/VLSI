from enum import Enum
from typing import TypedDict, List

DEFAULT_TIMEOUT = 300

class ModelType(Enum):
    """Model type enum class"""
    BASE: str = "base"
    ROTATION: str = "rotation"

class SMTSolver(Enum):
    Z3: str = "z3"
    CVC4: str = "cvc4"

class Status(Enum):
    FEASIBLE = 2
    OPTIMAL = 1
    NO_SOLUTION = 0
    INFEASIBLE = -1
    UNBOUNDED = -2
    ERROR = -3

def CorrectSolution(x: Status):
    return x in [Status.OPTIMAL, Status.FEASIBLE]

class Coordinates(TypedDict):
    pos_x: List[int]
    pos_y: List[int]

class Solution:
    status: Status
    input_name: str
    num_circuits: int
    width: int
    height: int
    time_solved: float
    circuits: List[List[int]]
    coords: Coordinates
    rotation: List[bool] = None