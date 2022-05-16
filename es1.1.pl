dropAny(X, [ X | T ], T).
dropAny(X, [ H | Xs ], [ H | L ]) :- dropAny(X, Xs, L ).

dropFirst(X, [ X | T ], T) :- !.
dropFirst(X, [ H | Xs ], [ H | L ]) :- dropFirst(X, Xs, L ).


dropLast(X, [ H | Xs ], [ H | L ]) :- dropLast(X, Xs, L ), !.
dropLast(X, [ X | T ], T).

dropAll(_, [], []).
dropAll(X, [ X | T ], L) :- dropAll(X, T, L), !.
dropAll(X, [ H | T ], [H | L]) :- dropAll(X, T, L ), !.
