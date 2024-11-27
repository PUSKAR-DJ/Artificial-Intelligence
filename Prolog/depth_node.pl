% Facts
parent(a, b).
parent(a, c).
parent(b, d).
% Rules
depth(X, Y, 0) :- X = Y.
depth(X, Y, D) :- parent(X, Z), depth(Z, Y, D1), D is D1 + 1.
