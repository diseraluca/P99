element_at(X, [X | _], 1).
element_at(X, [_ | Ys], N) :- N > 1, Predecessor is N - 1, element_at(X, Ys, Predecessor). 