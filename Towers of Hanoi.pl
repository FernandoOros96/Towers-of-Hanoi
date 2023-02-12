move(0, _, _, _, []).

move(N, T1, T3, T2, Moves) :-
    N > 0,
    N1 is N - 1,
    move(N1, T1, T2, T3, M1),
    append(M1, [T1-to-T3], M2),
    move(N1, T2, T3, T1, M3),
    append(M2, M3, Moves).

hanoi(N, Moves) :-
    move(N, left, right, center, Moves).
