isPrime(N) :- N > 1, isPrime(N, 2).

isPrime(N, N) :- !.
isPrime(N, I) :- N mod I =:= 0, !, fail.
isPrime(N, I) :- I1 is I + 1, isPrime(N, I1).