% Facts
parent(john, mary).
parent(john, tom).
% Rules
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
