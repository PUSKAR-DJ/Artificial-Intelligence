% Facts
parent(a, b).
parent(a, c).
parent(b, d).
parent(b, e).
% Rules
mirror(nil, nil).
mirror(tree(X, L1, R1), tree(X, L2, R2)) :- mirror(L1, R2), mirror(R1, L2).
