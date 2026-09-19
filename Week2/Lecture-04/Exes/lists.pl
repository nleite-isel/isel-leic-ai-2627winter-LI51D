

head([H | Tail], H).

second([H, S | Tail], S).

third([H, S, T | Tail], T).

/*

?- head([1, 2, 3], H).

?- head([1, 2, 3], 1).

?- head([1, 2, 3], 2).

?- head([], H).

?- second([1, 2, 3], Sec).

?- third([1, 2], T).

?- third([1, 2, 4, 5], T).

*/

print([]).

print([H | T]) :-
	write(H), nl,
	print(T).
	
/*

?- print([1,2,ann, b]).

*/	



member(E, [E | Tail]).

member(E, [H | Tail]) :-
	member(E, Tail).

/*
?- member(E, [1, 2, b, ann, b]).

?- member(b, [1, 2, b, ann, b]).

*/

append([], L2, L2).

append(L1, [], L1).

append([H | T], L2, [H | Tail]) :-
	append(T, L2, Tail).
	
/*

?- append([1, 2], [3, 2, 1], L).

?- append([1, f(a, b), [], 2], [3, [2], [], 1], L).

*/













