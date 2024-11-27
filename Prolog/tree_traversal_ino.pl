% Facts
parent(a, b).
parent(a, c).
parent(b, d).
parent(b, e).
% Rules
inorder(nil, []).
inorder(tree(Root, Left, Right), List) :- inorder(Left, L1), inorder(Right,
L2), append(L1, [Root|L2], List).% Facts
tree(tree(1, tree(2, nil, nil), tree(3, nil, nil))).
% Rules
max_tree(tree(X, nil, nil), X).
max_tree(tree(X, L, R), Max) :- max_tree(L, MaxL), max_tree(R, MaxR), Max
is max(X, max(MaxL, MaxR)).% Facts
tree(tree(1, tree(2, nil, nil), tree(3, nil, nil))).
% Rules
max_tree(tree(X, nil, nil), X).
max_tree(tree(X, L, R), Max) :- max_tree(L, MaxL), max_tree(R, MaxR), Max
is max(X, max(MaxL, MaxR)).% Facts
tree(tree(1, tree(2, nil, nil), tree(3, nil, nil))).
% Rules
max_tree(tree(X, nil, nil), X).
max_tree(tree(X, L, R), Max) :- max_tree(L, MaxL), max_tree(R, MaxR), Max
is max(X, max(MaxL, MaxR)).% Facts
tree(tree(1, tree(2, nil, nil), tree(3, nil, nil))).
% Rules
max_tree(tree(X, nil, nil), X).
max_tree(tree(X, L, R), Max) :- max_tree(L, MaxL), max_tree(R, MaxR), Max
is max(X, max(MaxL, MaxR)).
