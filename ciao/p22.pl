range(L, L, [L]).
range(L, R, [L|Ls]) :- L < R, L1 is L+1, range(L1, R, Ls). 