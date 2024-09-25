loves(vincent, mia). % fact, constant

loves(marcellus, mia) :- loves(vincent, mia). % rule, variable


male(vincent).
male(marcellus).

% define parent
parent(marcellus, vincent).
parent(marcellus, jules).
parent(marcellus, mia).

parent(mia, alice).
parent(mia, bob).


% define female
female(mia).
female(jules). 
female(alice).
female(diana).

happy(vincent).
happy(marcellus).
happy(mia).
happy(jules).
with_vincent(marcellus).

% define rules: 
runs(vincent) :-
  happy(vincent).

% use , for multiple rules 
dances(marcellus) :-
  happy(marcellus),
  with_vincent(marcellus).

% define predicates 
does_marcellus_dance :- dances(marcellus),
  write('Marcellus dances.').

/*
swims(mia) :-
  happy(mia),
  near_water(mia). */

swim(mia) :-
  happy(mia).
swim(mia) :-
  near_water(mia).


get_grandchild :-
  parent(marcellus, X),
  parent(X, Y),
  write('Marcellus has a grandchild called '),
  write(Y), nl. % nl = new line

get_grandparent :-
  parent(X, vincent),
  parent(X, mia),
  format('Marcellus has a grandparent called ~w~n', [X]).

grand_parent(X, Y) :-
  parent(X, Z),
  parent(Z, Y).

blushes(X) :- human(X).
human(derek).

what_grad(5) :-
  write('Go to kindergarten').
what_grad(6) :-
  write('Go to 1st Grade').
what_grad(other) :-
  Grade is other - 5,
  format('Go to ~w Grade~n', [Grade]).



