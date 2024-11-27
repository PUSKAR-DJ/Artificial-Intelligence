% Facts
parent(john, mary).
parent(john, tom).
parent(mary, alice).
parent(mary, bob).
parent(tom, charlie).
% Rules
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).
