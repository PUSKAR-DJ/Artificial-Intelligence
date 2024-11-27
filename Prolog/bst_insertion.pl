% Facts
bst(nil).
% Rules
bst_insert(nil, X, tree(X, nil, nil)).
bst_insert(tree(Root, Left, Right), X, tree(Root, Left1, Right)) :- X =<
Root, bst_insert(Left, X, Left1).
bst_insert(tree(Root, Left, Right), X, tree(Root, Left, Right1)) :- X >
Root, bst_insert(Right, X, Right1).
