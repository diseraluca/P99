duplicate([], []).
duplicate([X|Xs], [X, X|Ys]) :- duplicate(Xs, Ys).