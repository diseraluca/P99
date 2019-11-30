:- use_module(library(random)).

remove_at(X, [X|Xs], 1, Xs). 
remove_at(Y, [X|Xs], N, [X|R]) :- N > 1, N1 is N-1, remove_at(Y, Xs, N1, R). 

rnd_select(_, 0, []).
rnd_select(Xs, N, [L|Ys]) :- N > 0, length(Xs, M), random(1, M, R), remove_at(L, Xs, R, _), N1 is N-1, rnd_select(Xs, N1, Ys).