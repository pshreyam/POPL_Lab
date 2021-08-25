/* Basic arithmetic operations */

add(X, Y, R):-
    R is X + Y.

subtract(X, Y, R):-
    R is X - Y.

multiply(X, Y, R):-
    R is X * Y.

divide(X, Y, R):-
    R is X / Y.

power(X, Y, R):-
    R is X ** Y.

integer_division(X, Y, R):-
    R is X // Y.

modulo_division(X, Y, R):-
    R is X mod Y.
