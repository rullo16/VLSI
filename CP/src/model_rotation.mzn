include "alldifferent.mzn";
include "cumulative.mzn";
include "diffn.mzn";

% Define problem parameters
int: w; % Width of the plate
int: n; % Number of circuits

% Circuit dimensions
array[1..n] of int: x;
array[1..n] of int: y;

% Compute length bounds based on circuit area
int: max_h = sum(y); % Length upper bound
int: circuit_area = sum(k in 1..n)(x[k] * y[k]);
int: min_h = circuit_area div w; % Length lower bound

% Define the variable for the plate length
var min_h..max_h: h;

% Variables for the circuit coordinates
array[1..n] of var 0..w-min(x): pos_x; % x coordinate of circuits
array[1..n] of var 0..max_h-min(y): pos_y; % y coordinate of circuits

% Variables for rotation
array[1..n] of var bool: rotation; % Rotation flag
array[1..n] of var 0..max(max(x),max(y)): real_pos_x; % Rotated x coordinate
array[1..n] of var 0..max(max(x),max(y)): real_pos_y; % Rotated y coordinate

% Constraints for rotation
constraint forall(i in 1..n)(
  (rotation[i] /\ real_pos_x[i] == y[i] /\ real_pos_y[i] == x[i]) % Circuit is rotated
  xor
  (not(rotation[i]) /\ real_pos_x[i] == x[i] /\ real_pos_y[i] == y[i]) % Circuit is not rotated
);

% Constraints
constraint max([real_pos_x[i] + pos_x[i] | i in 1..n]) <= w; % Check if circuits are inside the plate width
constraint max([real_pos_y[i] + pos_y[i] | i in 1..n]) <= h; % Check if circuits are inside the plate length

constraint diffn(pos_x, pos_y, real_pos_x, real_pos_y); % Non-overlapping constraint for circuit coordinates

constraint cumulative(pos_y, real_pos_y, real_pos_x, w); % Cumulative constraint for circuits in the y direction

% Symmetry breaking constraint to break symmetrical solutions
constraint lex_lesseq([pos_x[k] | k in 1..n], [w-pos_x[k]-x[k] | k in 1..n]);

% Solver
solve::seq_search([
  int_search(pos_y, first_fail, indomain_min),
  int_search(pos_x, first_fail, indomain_min),
  int_search([h], smallest, indomain_min)
]) minimize h;

% Output format
output ["\(w) \(h)\n\(n)\n"] ++ ["\(x[i]) \(y[i]) \(pos_x[i]) \(pos_y[i])\n" | i in 1..n];