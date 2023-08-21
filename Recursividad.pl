% Conteo ascendente partiendo de 1
contar(X, N):-
  =:=(X, N),
  writeln(X),
  !.

contarN(X, N):-
  =<(X, N),
  writeln(X),
  is(Xsig, +(X,1)),
  contarN(Xsig, N).