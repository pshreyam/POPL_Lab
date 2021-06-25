/* Representation of lists */

% membership
list_member(X, [X|_]).
list_member(X, [_|Tail]):-list_member(X, Tail).

% length
list_length([], 0).
list_length([_|Tail], N):-list_length(Tail, N1), N is N1 + 1.

% concatenation
concatenation([], L, L).
concatenation([X1|L1], L2, [X1|L3]):-concatenation(L1, L2, L3).
