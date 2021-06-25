/* Family Tree Diagram */

% parent relationship
parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

% gender definition
female(pam).
female(ann).
female(liz).
male(tom).
male(bob).
male(pat).
male(jim).

% rules
offspring(Y, X):-parent(X, Y).
mother(X, Y):-parent(X, Y),female(X).
father(X, Y):-parent(X, Y),male(X).

grandparent(X, Z):-parent(X, Y),parent(Y, Z).
grandfather(X, Z):-grandparent(X, Z),male(X).

sister(X, Y):-parent(Z, X),parent(Z, Y),female(X),not(X=Y).

predecessor(X, Z):-parent(X, Z).
predecessor(X, Z):-parent(Y, Z),predecessor(X, Y).
