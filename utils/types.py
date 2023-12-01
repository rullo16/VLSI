from enum import Enum
from typing import TypedDict, List

DEFAULT_TIMEOUT = 300

class ModelType(Enum):
    """Model type enum class"""
    BASE: str = "base"
    ROTATION: str = "rotation"

class SolverMinizinc(Enum):
    GECODE: str = "gecode"
    CHUFFED: str = "chuffed"
    CPLEX: str = "cplex"

class SolverSMT(Enum):
    Z3: str = "z3"
    CVC4: str = "cvc4"

class InputMode(Enum):
    DZN: str = "dzn"
    TXT: str = "txt"

class StatusEnum(Enum):
    FEASIBLE = 2
    OPTIMAL = 1
    NO_SOLUTION = 0
    INFEASIBLE = -1
    UNBOUNDED = -2
    ERROR = -3

def CorrectSolution(x: StatusEnum):
    return x in [StatusEnum.OPTIMAL, StatusEnum.FEASIBLE]

class Coords(TypedDict):
    x: List[int]
    y: List[int]

class Solution:
    status: StatusEnum
    input_name: str
    width: int
    n_circuits: int
    circuits: List[List[int]]
    height: int
    solve_time: float
    rotation: List[bool] = None
    Coords: Coords
    configuration: List[str]=None