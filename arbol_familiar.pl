% Gender
gender(josefina, f).
gender(ligia, f).
gender(silvia, f).
gender(marina, f).
gender(regina, f).
gender(jacinta, f).
gender(marlene, f).

gender(mario, m).
gender(jaime, m).
gender(carlos, m).
gender(julio, m).
gender(manuel, m).
gender(irvin, m).

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
brother(X, Y):-
  gender(X, m),
  father(P, X),
  father(P, Y),
  mother(M, X),
  mother(M, Y),
  \==(X, Y).

sister(X, Y):-
  gender(X, f),
  father(P, X),
  father(P, Y),
  mother(M, X),
  mother(M, Y),
  \==(X, Y).

% HACER CLAUSULAS PARA PRIMOS, HERMANOS, TIOS, ETC
uncle(X, Y):-
( father(P, Y) ; mother(P, Y)),
  brother(X, P).

aunt(X, Y):-
  ( father(M, Y) ; mother(M, Y)),
  sister(X, M).

cousins(X, Y):-
  ( mother(M, X) ; father(M, X)),
  ( mother(P, Y) ; father(P, Y)),
  ( brother(M, P) ; sister(M, P)).

% algo(este).
% algo(aquel).

% prueba(X):-
    % !, algo(X).

