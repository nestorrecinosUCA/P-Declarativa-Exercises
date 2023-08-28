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
factorial(N):-
  factorial(N, 1).

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

% Calcular el n-ésimo término de Fibonacci:
fibo(1, 0):- !.
fibo(2, 1):- !.
fibo(N, Fn):-
  is(Nm1, -(N, 1)),
  is(Nm2, -(N, 2)),
  fibo(Nm1, Fn1),
  fibo(Nm2, Fn2),
  is(Fn, +(Fn1, Fn2)).

% Sumar todos los enteros comprendidos en el intervalo [a,b]
sumar_intervalo(A, B, _):-
  >(A, B),
  writeln('Escribe los valores al revés'),
  !,
  fail.

sumar_intervalo(B, B, B):- 
  %=:=(A, B),
  %is(Suma, B),
  !.

sumar_intervalo(A, B, Suma):-
  <(A, B),
  is(Asig, +(A, 1)),
  sumar_intervalo(Asig, B, SumaTemp),
  is(Suma, +(SumaTemp, A)).
