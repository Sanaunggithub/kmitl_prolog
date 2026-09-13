merge_list([], L2, L2).
merge_list(L1, [], L1).
merge_list([H1|T1], [H2|T2], [H1|Merged]) :-
    H1 =< H2, !,
    merge_list(T1, [H2|T2], Merged).

merge_list([H1|T1], [H2|T2], [H2|Merged]) :-
    merge_list([H1|T1], T2, Merged).