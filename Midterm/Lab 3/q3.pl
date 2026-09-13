split_list(List, N, L1, L2) :-
    N1 is N - 1,
    length(L1, N1),
    append(L1, [_|L2], List).