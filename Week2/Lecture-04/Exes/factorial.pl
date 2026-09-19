/*
factorial(0, 1).

factorial(N, M) :- N > 0, Prev is N -1, factorial(Prev, M1), M is M1 * N.
*/

% With accumulator
factorial(N, F) :- factorial(N, 1, F).

factorial(0, A, A).

factorial(N, A, F) :-
    N > 0,
    A1 is N * A,
    N1 is N - 1,
    factorial(N1, A1, F).


:- 
	statistics(cputime, T0),
	% Compute factorial
	factorial(4, W), writeln(W),
	statistics(cputime, T1),
	T is T1 - T0,
	format('CPU time: ~w~n', [T]).



