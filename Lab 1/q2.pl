% Who is a sister of Mary and who are their parents?
sister(X, mary), parent(P, X).

% From the facts given, who has a parent?
?- parent(_, X).

% From the facts given, who has a child or children?
?- parent(X, _).

% From the facts given, who is a sister of somebody?
?- sister(X, _).