remove_every_three(List, New_L) :- remove_every_three(List, 1, New_L).

remove_every_three([], _, []).

remove_every_three([_|T], N, New_L) :-
    N mod 3 =:= 0, !,
    N1 is N + 1,
    remove_every_three(T, N1, New_L).

remove_every_three([H|T], N, [H|New_L]) :-
    N1 is N + 1,
    remove_every_three(T, N1, New_L).