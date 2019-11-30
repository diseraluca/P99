compress([X,X|Xs], [X|Xs1]) :- compress(Xs, Xs1).
compress([X,Y|Xs], [X|Xs1]) :- X \= Y, compress([Y|Xs], Xs1).
compress([X], [X]).
compress([], []).