myLength(0, []).
myLength(L, [_ | XS]) :- myLength(LN, XS), L is 1 + LN.