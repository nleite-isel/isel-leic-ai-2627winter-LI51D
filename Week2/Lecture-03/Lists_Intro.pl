

print([]).

print([Head | Tail]) :- 
	write(Head), nl,
	print(Tail).


/*

?- print([1,2,3]).
1
2
3
true.


print([1,2,3]) 
	write(1), print([2,3]).


print([2,3]).
	write(2), print([3]).

print([3]).
	write(3), print([]).

print([]). true




*/
