

createTable(Table) :- 
	Table = [[., ., .], 
  			 [., ., .],
			 [., ., .]]. 
	
	
% Exercises

% 1.
printTable(Table) :-
%	.... TO IMPLEMENT			  
% Print a 2D table
	
% 2.	
setVal(List, Idx, Val, NewList) :-
%	.... TO IMPLEMENT			  
% Set Val in List index Idx and produces NewList	
% You should use nth0 Prolog predicate
	
% 3.	
setVal(Table, Row, Col, Val, NewTable) :-
%	.... TO IMPLEMENT			  
% Set Val in Table row Row and column Col and produces NewTable
% You should use nth0 Prolog predicate
		 
			 
/*

Run:

C:\>swipl table.pt

?- createTable(Table).


?- createTable(Table), printTable(Table).
Table =
. . .
. . .
. . .

?- L = [1, 2, 3], setVal(L, 1, 10, L1).   % Set 10 into index 1
L = [1, 10, 3]

?- createTable(Table), printTable(Table), setVal(Table, 1, 1, x, NewTable), printTable(NewTable).
Table =
. . .
. . .
. . .

NewTable =
. . .
. x .
. . .



*/
