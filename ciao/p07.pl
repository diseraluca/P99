:- use_module(engine(basic_props)).

myFlatten(X, [X]) :- \+ list(X).
myFlatten([], []).
myFlatten([X | Xs], F) :- myFlatten(X, X1), myFlatten(Xs, Xs1), append(X1, Xs1, F).