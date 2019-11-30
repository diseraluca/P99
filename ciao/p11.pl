pack([], []).
pack([X | Xs], [Z|Zs]) :- transfer(X, Xs, Ys, Z), pack(Ys, Zs).

transfer(X, [], [], [X]).
transfer(X, [Y|Ys], [Y|Ys],[X]) :- X \= Y.
transfer(X, [X|Xs], Ys, [X|Zs]) :- transfer(X, Xs, Ys, Zs).

encode_helper([], []).
encode_helper([[X]|Ys], [X|Zs]) :- encode_helper(Ys, Zs).
encode_helper([[X|Xs]|Ys], [[L, X]|Zs]) :- length([X|Xs], L), L > 1, encode_helper(Ys, Zs).

encode(Xs, Ys) :- pack(Xs, Zs), encode_helper(Zs, Ys).