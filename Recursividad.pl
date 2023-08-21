% Conteo ascendente partiendo de 1
contarN(N):-
  contarN(1, N).

contarN(X, N):-
  =:=(X, N),
  writeln(X),
  !.

contarN(X, N):-
  =<(X, N),
  writeln(X),
  is(Xsig, +(X,1)),
  contarN(Xsig, N).

% Factorial
factorial(N, _):-
  =:=(N,0),
  writeln(1),
  !.

factorial(N, Ac):-
  =:=(N,1),
  writeln(Ac),
  !.

factorial(N, Ac):-
  is(AcSig, *(N, Ac)),
  is(Nant, -(N, 1)),
  factorial(Nant, AcSig).