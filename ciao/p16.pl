drop(Xs, N, Ys) :- drop(Xs, N, Ys, N).

drop([], _, [], _).
drop([_|Xs], N, Ys, 1) :- drop(Xs, N, Ys, N).
drop([X|Xs], N, [X|Ys], K) :- K > 1, K1 is K-1, drop(Xs, N, Ys, K1).