point(p0, 1, 2).
point(p1, 4, 6).

final_distance(PointA, PointB, Dist) :-
    point(PointA, X1, Y1),
    point(PointB, X2, Y2),
    Dist is sqrt((X2-X1)**2 + (Y2-Y1)**2).