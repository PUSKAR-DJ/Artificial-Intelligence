% Facts
parent(anne, brian).
parent(anne, chris).
parent(brian, david).
% Rules
descendant(X, Y) :- parent(Y, X).
descendant(X, Y) :- parent(Z, X), descendant(Z, Y).
