% Facts
parent(a, b).
parent(a, c).
parent(b, d).
parent(b, e).
parent(c, f).
% Rules
height(nil, 0).
height(X, H) :- parent(X, L), parent(X, R), height(L, LH), height(R, RH), H
is max(LH, RH) + 1.
