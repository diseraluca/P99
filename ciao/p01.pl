myLast(Last, [_|Xs]) :- myLast(Last, Xs).
myLast(Last, [X|[]]) :- Last = X.