:- use_module(library(llists)).

repeat([], _, []).
repeat(X, 0, [X]).
repeat(X, N, [X|Xs]) :- N > 0, N1 is N-1, repeat(X, N1, Xs).

duplicate([], _, []).
duplicate(Xs, 0, Xs).
duplicate([X|Xs], N, Fs) :- N > 1, N1 is N-1, repeat(X, N1, Ys), duplicate(Xs, N, Zs), flatten([Ys|Zs], Fs).