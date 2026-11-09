get_even([], []).

get_even([H|T], [H|L2]) :-
    0 is H mod 2,
    get_even(T, L2).

get_even([H|T], L2) :-
    1 is H mod 2,
    get_even(T, L2).