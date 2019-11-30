myReverse([], []).
myReverse(R, [X | XS]) :- myReverse(R1, XS), append(R1, [X], R). 