
% Implementacao 1
% del(X, L1, L2) :- nth0(_, L1, X, L2).  % L2 é a lista sem o X. L1 é a lista que contém o X num dado índice.



% Implementacao 2
del(X, [X | T], T).

del(X, [H | T], [H | L]) :-
	del(X, T, L).


/*

?- del(3, [10, 11, 3, 2, 8], L).

*/


addFront(H, L, [H | L]).


reverseAux(L1, L2) :-
	reverseAux(L1, [], L2).

reverseAux([], Acc, Acc).

reverseAux([H | T], Acc, L) :- 
	addFront(H, Acc, Aux),
	reverseAux(T, Aux, L).

/*
?- reverse([1, 2, 3, 4], L).
*/


/*
?- read(X,Y).

?- length(L, 3), maplist(=(.), L).


*/



