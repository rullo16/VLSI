from enum import Enum
from typing import TypedDict, List

DEFAULT_TIMEOUT = 300

class ModelType(Enum):
    """Model type enum class"""
    BASE: str = "base"
    ROTATION: str = "rotation"

class MznSolver(Enum):
    GECODE: str = "gecode"
    CHUFFED: str = "chuffed"
    CPLEX: str = "cplex"
    
class Status_CP(Enum):
    FEASIBLE = 2
    OPTIMAL = 1
    NO_SOLUTION = 0
    INFEASIBLE = -1
    UNBOUNDED = -2
    ERROR = -3

def CorrectSolution(x: Status_CP):
    return x in [Status_CP.OPTIMAL, Status_CP.FEASIBLE]

class Coordinates(TypedDict):
    pos_x: List[int]
    pos_y: List[int]

class Solution:
    status: Status_CP
    input_name: str
    num_circuits: int
    width: int
    height: int
    time_solved: float
    circuits: List[List[int]]
    coords: Coordinates
    rotation: List[bool] = None