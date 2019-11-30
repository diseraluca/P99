secondToLast(SecondToLast, [SecondToLast, _ | []]).
secondToLast(SecondToLast, [_ | Xs]) :- secondToLast(SecondToLast, Xs).