% Facts
tree(tree(1, tree(2, nil, nil), tree(3, nil, nil))).
% Rules
max_tree(tree(X, nil, nil), X).
max_tree(tree(X, L, R), Max) :- max_tree(L, MaxL), max_tree(R, MaxR), Max
is max(X, max(MaxL, MaxR)).
