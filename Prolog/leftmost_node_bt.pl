% Facts
parent(a, b).
parent(b, d).
% Rules
leftmost(X, X) :- \+ parent(X, _).
leftmost(X, Y) :- parent(X, Z), leftmost(Z, Y).
