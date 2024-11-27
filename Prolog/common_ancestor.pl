% Facts
parent(a, b).
parent(a, c).
parent(b, d).
parent(c, e).
% Rules
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).
common_ancestor(X, Y, A) :- ancestor(A, X), ancestor(A, Y).
