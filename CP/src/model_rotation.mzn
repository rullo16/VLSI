include "alldifferent.mzn";
include "cumulative.mzn";
include "diffn.mzn";

int: w;
int: n;


set of int: CIRCUITS = 1..n;

array[CIRCUITS] of int: x;
array[CIRCUITS] of int: y;

int: max_h = sum(y);%length upperbound
int: circuit_area = sum(k in CIRCUITS)(x[k] * y[k]);
int: min_h = circuit_area div w;%length lowerbound

var min_h..max_h: h; %length


%Variables

%x coordinate of circuits
array[CIRCUITS] of var 0..w-min(x): pos_x;

%y coordinate of circuits
array[CIRCUITS] of var 0..max_h-min(y): pos_y;

%rotation
array[CIRCUITS] of var bool: rotation;
array[CIRCUITS] of var 0..max(max(x),max(y)): real_pos_x;
array[CIRCUITS] of var 0..max(max(x),max(y)): real_pos_y;

%Constraints rotation

constraint forall(i in CIRCUITS)((rotation[i] /\ real_pos_x[i] == y[i] /\ real_pos_y[i] == x[i]) xor (not(rotation[i]) /\ real_pos_x[i] == x[i] /\ real_pos_y[i] == y[i]));

%Constraints
constraint max([real_pos_x[i] + pos_x[i] | i in CIRCUITS])<= w;
constraint max([real_pos_y[i] + pos_y[i] | i in CIRCUITS])<= h;

constraint diffn(pos_x,pos_y,real_pos_x,real_pos_y);

constraint cumulative(pos_y,real_pos_y,real_pos_x,w);

%Symmetry breaking constraint
constraint lex_lesseq([pos_x[k]|k in CIRCUITS], [w-pos_x[k]-x[k] | k in CIRCUITS]);

%Solver

solve:: seq_search([
  int_search(pos_y,first_fail,indomain_min),
  int_search(pos_x,first_fail,indomain_min),
  int_search([h], smallest, indomain_min)])
  minimize h;

output ["\(w) \(h)\n\(n)\n"] ++ ["\(x[i]) \(y[i]) \(pos_x[i]) \(pos_y[i])\n" | i in CIRCUITS];
