male(john). male(oliver). male(ali). male(james). male(jack). male(harry).
female(helen). female(sophie). female(mary). female(sue).

parent(john, mary).
parent(john, sue).
parent(helen, mary).
parent(helen, sue).
parent(oliver, james).
parent(sophie, james).
parent(mary, jack).
parent(ali, jack).
parent(sue, harry).
parent(james, harry).

father(F, C) :- parent(F, C), male(F).
mother(M, C) :- parent(M, C), female(M).

grandfather(GF, C) :- parent(GF, P), parent(P, C), male(GF).
grandmother(GM, C) :- parent(GM, P), parent(P, C), female(GM).

sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.
sister(X, Y)  :- sibling(X, Y), female(X).
brother(X, Y) :- sibling(X, Y), male(X).


uncle(U, C) :- parent(P, C), sibling(U, P), male(U).
aunt(A, C)  :- parent(P, C), sibling(A, P), female(A).