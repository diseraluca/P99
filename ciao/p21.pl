insert_at(E, Xs, 1, [E|Xs]).
insert_at(E, [X|Xs], N, [X|Ys]) :- N > 1, N1 is N-1, insert_at(E, Xs, N1, Ys).