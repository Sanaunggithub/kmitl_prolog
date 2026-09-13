edge(a,b).
edge(a,c).
edge(b,c).
edge(b,d).
edge(c,d).
edge(c,e).
edge(e,d).

path(A, B, [A|Path]) :- edge(A, C), path(C, B, Path).
path(A, B, [A, B]) :- edge(A, B).