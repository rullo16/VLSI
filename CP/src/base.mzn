include "globals.mzn";

% Define problem parameters
int: w; % Width of the plate
int: n; % Number of circuits
array[1..n, 1..2] of int: circuits; % Array of circuits [width, height]

%Width and heights of the circuits
array[1..n] of int: x = [circuits[i, 1] | i in 1..n];
array[1..n] of int: y = [circuits[i, 2] | i in 1..n];

% Compute length bounds based on circuit area
int: max_l = sum(y); % Length upper bound
int: circuit_area = sum([x[i]*y[i] | i in 1..n]);
int: min_l = max(max(y),ceil(circuit_area / w)); % Length lower bound

% Define the variable for the plate length
var min_l..max_l: l;

% Variables for the circuit coordinates
array[1..n] of var 0..w-min(x): pos_x; % x coordinate of circuits
array[1..n] of var 0..max_l-min(y): pos_y; % y coordinate of circuits

% Constraints
constraint diffn(pos_x, pos_y, x, y); % Non-overlapping constraint for circuit coordinates

constraint forall(i in 1..n)(pos_x[i]+x[i] <= w /\ pos_y[i]+y[i] <= l); % Check if circuits are inside the plate

constraint cumulative(pos_x, x,y,l); % Cumulative constraint for circuits in the x direction
constraint cumulative(pos_y, y, x, w); % Cumulative constraint for circuits in the y direction

% Symmetry breaking

%Symmetry breaking constraint for samw width and height
predicate same_dim_symm_break() = forall(i,j in 1..n where i < j /\ x[i] == x[j] /\ y[i] == y[j])
  (lex_lesseq([pos_x[i], pos_y[i]], [pos_x[j], pos_y[j]]));

% Symmetry breaking wrt width and height
predicate reflect_symm_break() = let {
  array[1..n] of var int: new_pos_x = [w-pos_x[i]-x[i] | i in 1..n];
  array[1..n] of var int: new_pos_y = [l-pos_y[i]-y[i] | i in 1..n];
} in lex_lesseq(pos_x, new_pos_x) /\ lex_lesseq(pos_y, new_pos_y);

%Final Symmetry breaking
constraint same_dim_symm_break() /\ reflect_symm_break();

% Solver
solve :: seq_search([
  int_search([l], input_order, indomain_min)::restart_luby(200),
  int_search(pos_x, first_fail, indomain_min),
  int_search(pos_y, first_fail, indomain_min)
]) minimize l;


% Output format
output ["Max height: \(l).\n Coordinates:\n"];
output ["\t\(circuits[i, 1]) \(circuits[i, 2]), \(pos_x[i]) \(pos_y[i]))\n" | i in 1..n];