% Com cut
p(X) :- write('ola 1, '), write(X), !.

% Sem cut
%p(X) :- write('ola 1, '), write(X).

p(X) :- write('ola 2, '), write(X).


/*
?- p(10).
*/
