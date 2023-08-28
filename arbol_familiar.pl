% Madres
mother(josefina, mario).
mother(josefina, ligia).
mother(silvia, marina).
mother(silvia, jaime).
mother(silvia, carlos).
mother(ligia, regina).
mother(ligia, jacinta).
mother(marlene, julio).

% Padres
father(manuel, mario).
father(manuel, ligia).
father(mario, marina).
father(mario, jaime).
father(mario, carlos).
father(julio, regina).
father(julio, jacinta).
father(irvin, julio).

% Abuelo:
grandfather(X, Y) :-
  father(X, W),
  father(W, Y).
grandfather(X,Y):-
  father(X, W),
  mother(W, Y).

% Abuela:
grandmother(X, Y):-
  mother(X, W),
  father(W,Y).
grandmother(X,Y):-
  mother(X, W),
  mother(W, Y).

% Abuelos
grandparents(X,Y) :- grandfather(X,Y).
% Abuelas
grandparents(X,Y) :- grandmother(X,Y).

% hermanos:
sibling(X, Y):-
  father(P, X),
  father(P, Y),
  mother(M, X),
  mother(M, Y),
  X \= Y.

% HACER CLAUSULAS PARA PRIMOS, HERMANOS, TIOS, ETC
uncles(X, Y):-
  father(P, Y),
  sibling(X, P).

uncles(X, Y):-
  mother(M, Y),
  sibling(X, M).
  %father(P, Y),