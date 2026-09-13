remove_duplication([], []).

remove_duplication([H|T] ,L):-
    member(H,T),
    remove_duplication(T, L).

remove_duplication([H|T], [H|L]) :-
    not_member(H, T),
    remove_duplication(T, L).

not_member(_, []).
not_member(X, [H|T]):-
    X \= H,
    not_member(X, T).