% Facts
parent(a, b).
parent(b, c).
parent(c, d).
% Rules
ancestor(X, Y, [X|Path]) :- parent(X, Y), Path = [].
ancestor(X, Y, [X|Path]) :- parent(X, Z), ancestor(Z, Y, Path).
