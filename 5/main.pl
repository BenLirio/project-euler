div_by_all(_, 1, 1).

div_by_all(N, M, Out) :-
  M > 1,
  0 is N mod M,
  M1 is M - 1,
  div_by_all(N, M1, Out).

div_by_all(N, M, 0) :-
  M > 1,
  0 =\= N mod M.

smallest_div_by_all(N, M, N) :-
  div_by_all(N, M, 1).
smallest_div_by_all(N, M, Out) :-
  N1 is N + 1,
  smallest_div_by_all(N1, M, Out).



:- initialization(main).

main :-
  smallest_div_by_all(1, 20, Answer),
  write(Answer),
  nl,
  halt.