
/*
test(X) :-
	% With cut
	X >= 10, write('X => 10'), !.
*/	

test(X) :-
	% Without cut
	X >= 10, write('X => 10').


test(X) :-
	write('X < 10').
	
	
	


/*
test(X) :-
	% With cut
	% X >= 10, write('X => 10'), !
	% Without cut
	X >= 10, write('X => 10')%, !
	; % Or
	write('X < 10').
*/
	
	
	
