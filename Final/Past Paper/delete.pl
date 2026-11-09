delete_all(_, [], []).

delete_all(X, [X|T], L2) :-
    !,
    delete_all(X, T, L2).

delete_all(X, [H|T], [H|L2]) :-
    delete_all(X, T, L2).