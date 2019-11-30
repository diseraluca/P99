:- use_module(engine(basic_props)).
:- use_module(library(llists)).

repeat(X, 0, [X]).
repeat(X, N, [X|Xs]) :- N > 0, N1 is N-1, repeat(X, N1, Xs).

expand([], []).
expand([X|Xs], [X|Zs]) :- \+ list(X), expand(Xs, Zs).
expand([[L, X]|Ys], [Xs|Zs]) :- L1 is L-1, repeat(X, L1, Xs), expand(Ys, Zs).

decode(Xs, Zs) :- expand(Xs, Ys), flatten(Ys, Zs).
