% Madres
mother(josefina, marisol).
mother(josefina, ligia).
mother(silvia, marina).
mother(silvia, jaime).
mother(silvia, carlos).
mother(ligia, regina).
mother(ligia, jacinta).

% Padres
father(manuel, marisol).
father(manuel, ligia).
father(mario, marina).
father(mario, jaime).
father(mario, carlos).
father(julio, regina).
father(julio, jacinta).

% Abuelo:
grandfather(X,Y) :-
  father(X, W),
  father(W,Y).
grandfather(X,Y):-
  father(X, W),
  mother(W,Y).

% Abuela:
grandmother(X,Y):-
  mother(X, W),
  father(W,Y).
grandmother(X,Y):-
  mother(X, W),
  mother(W,Y).

% Abuelas
grandparents(X,Y) :- grandfather(X,Y).
grandparents(X,Y) :- grandmother(X,Y).


% HACER CLAUSULAS PARA PRIMOS, HERMANOS, TIOS, ETC