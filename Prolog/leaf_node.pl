% Facts
parent(alice, bob).
parent(bob, charlie).
parent(bob, diana).
% Rules
leaf(X) :- parent(_, X), \+ parent(X, _).
