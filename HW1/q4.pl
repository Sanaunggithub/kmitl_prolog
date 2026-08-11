find_common([],L2, []).

find_common([H|T], L2, [H|L3]):-
    member(H, L2),
    find_common(T,L2,L3).

not_member(_, []).
not_member(X, [H|T]):-
    X \= H,
    not_member(X, T).

find_common([H|T], L2, L3):-
    not_member(H,L2),
    find_common(T, L2, L3).
