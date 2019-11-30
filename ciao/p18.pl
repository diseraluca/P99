slice([], _, _, []).
slice([_|_], 1, 0, []).
slice([_|Xs], N, K, Zs) :- N < K, N > 1, N1 is N-1,  K1 is K-1, slice(Xs, N1, K1, Zs).
slice([X|Xs], 1, K, [X|Zs]) :- K > 0, K1 is K-1, slice(Xs, 1, K1, Zs).