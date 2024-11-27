% Facts
parent(a, b).
parent(a, c).
% Rules
height(nil, 0).
height(tree(_, L, R), H) :- height(L, LH), height(R, RH), H is max(LH, RH)
+ 1.
balanced(nil).
balanced(tree(_, L, R)) :- balanced(L), balanced(R), height(L, LH),
height(R, RH), abs(LH - RH) =< 1.
