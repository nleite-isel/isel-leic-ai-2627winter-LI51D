
member(X, [X | Tail]).

member(X, [Head | Tail]) :-
	member(X, Tail).


/*
?- member(b, [ a, b, c]). % Check whether b is in [a,b,c]
yes



?- member(X, [a, b, c]). % Find such X that X is member of [a,b,c]
X = a;
X = b;
X = c;
no


?- member(apple, L).
L = [apple | _A]; % Any list that has "apple" as the head
L = [_A, apple | _B]; % First item is anything, second is "apple"
L = [_A, _B, apple | _C];
...


?- member(a, L), member(b, L), member(c, L).
L = [a, b, c | _A] ;
L = [a , b,_A, c | _B] ;
L = [a, b, _A, _B, c | _C];
L = [a, b, _A, _B, _C, c | _D] ;


?- L = [_, _, _], % L is any list with exactly three elements
   member( a, L), member( b, L), member( c, L).
L = [a, b, c];
L = [a, c, b];
L = [b, a, c];
L = [c, a, b];
L = [b, c, a];
L = [c, b, a];
no




*/







































