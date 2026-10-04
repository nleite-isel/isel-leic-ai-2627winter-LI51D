

replace(Idx, List, Value, NewList) :-
	replaceAux(0, Idx, List, Value, NewList).


replaceAux(Idx, Idx, [H | Tail], Value, [Value | Tail]). % Idx =:= Idx

replaceAux(Idx1, Idx, [H | Tail], Value, [H | NewTail]) :-
	Idx1 =\= Idx, % Idx1 != Idx 
	Idx2 is Idx1 + 1,
	replaceAux(Idx2, Idx, Tail, Value, NewTail).


/*?- replace(2, [1, 2, 3, 4], 10, NewList).
NewList = [1, 2, 10, 4] ;
false.

?- 1 =\= 2.
true.

?- 1 =\= 1.
false.

?- 1 =:= 1.
true.

?- 1 = 1.
true.

?- 1 = 2.
false.

?- Idx1 = Idx.
Idx1 = Idx.

?- Idx1 = Idx, Idx1 = 1.
Idx1 = Idx, Idx = 1.


*/

createTable(Table) :- 
	Table = [[., ., .], 
  			 [., ., .],
			 [., ., .]]. 

% Replace in 2D table (List of Lists)
replaceTable(Row, Col, Table, Value, NewTable) :-
	nth0(Row, Table, Line),
	replace(Col, Line, Value, NewLine),
	replace(Row, Table, NewLine, NewTable).	
	
	
printList([]) :- nl.
		
printList([H | T]) :-
	write(H), write(' '),
	printList(T).	

printTable([]).
		
printTable([Row | Tail]) :-
	printList(Row), 
	printTable(Tail).

		
/*

Run:

C:\>swipl table.pt

?- createTable(Table).

?- createTable(Table), replaceTable(1, 1, Table, x, NewTable).

?- printList([., ., .]), write('ola').


?- createTable(Table), printTable(Table).
Table =
. . .
. . .
. . .

?- L = [1, 2, 3], replaceTable(1, 10, L, L1).   % Set 10 into index 1
L = [1, 10, 3]

?- createTable(Table), printTable(Table),  replaceTable(1, 1, Table, x, NewTable), printTable(NewTable).
Table =
. . .
. . .
. . .

NewTable =
. . .
. x .
. . .


*/




