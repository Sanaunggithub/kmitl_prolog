get_member_at([H|_], 0, H). 

get_member_at([_|T], N, X):- N1 is N - 1, get_member_at(T, N1, X).