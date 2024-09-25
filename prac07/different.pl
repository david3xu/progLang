% Facts
person(john).
person(mary).
person(elizabeth).

% rule
different_person(X, Y) :- person(X), person(Y), X \= Y.

% Queries
?- different_person(john, mary).
?- different_person(john, john).
?- \+ different_person(john, elizabeth).



