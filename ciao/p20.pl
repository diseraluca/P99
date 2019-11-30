remove_at(X, [X|Xs], 1, Xs). 
remove_at(Y, [X|Xs], N, [X|R]) :- N > 1, N1 is N-1, remove_at(Y, Xs, N1, R). 
