% Facts
tree(a, tree(b, nil, nil), tree(c, nil, nil)).
% Rules
subtree(T, tree(T, _, _)).
subtree(T, tree(_, L, _)) :- subtree(T, L).
subtree(T, tree(_, _, R)) :- subtree(T, R).
