sum_of_squares(0, Acc, Acc).
sum_of_squares(N, Acc, Out) :-
  N > 0,
  Acc1 is Acc + N * N,
  N1 is N - 1,
  sum_of_squares(N1, Acc1, Out).

square_of_sum(0, Acc, Out) :-
  Out is Acc * Acc.
square_of_sum(N, Acc, Out) :-
  N > 0,
  Acc1 is Acc + N,
  N1 is N - 1,
  square_of_sum(N1, Acc1, Out).

diff(N, Out) :-
  sum_of_squares(N, 0, SumOfSquares),
  square_of_sum(N, 0, SquareOfSum),
  Out is SquareOfSum - SumOfSquares.

:- initialization(main).

main :-
  diff(100, Answer),
  write(Answer),
  nl,
  halt.