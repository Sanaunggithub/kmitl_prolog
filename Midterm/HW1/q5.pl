max_of_list([X],X).

max_of_list([H|T], H):-
    max_of_list(T, MaxT),
    H > MaxT.

max_of_list([H|T], MaxT):-
    max_of_list(T, MaxT),
    H =< MaxT.

find_max([],[], Max).


find_max(L1, L2, Max):-
    max_of_list(L1, Max1),
    max_of_list(L2, Max2),
    Max is max(Max1, Max2).