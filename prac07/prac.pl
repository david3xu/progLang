% Leap Year Program 
leap_year(Y) :-
  Y mod 4 =:= 0,
  (Y mod 100 =\= 0; Y mod 400 =:= 0).

% Sorting Algorithm 
custom_sort([], []).
custom_sort([X], [X]).
custom_sort([X|Rest], Sorted) :- custom_sort(Rest, RestSorted), insert(X, RestSorted, Sorted).

insert(X, [], [X]).
insert(X, [Y|T], [Y|T1]) :- X > Y, insert(X, T, T1).
insert(X, [Y|T], [X,Y|T]) :- X =< Y.

% Map Coloring Problem 
color(zambia).
color(angola).
color(botswana).
color(lesotho).
color(mozambique).
color(namibia).
color(south_africa).
color(swaziland).

adjacent(zambia, angola).
adjacent(zambia, botswana).
adjacent(angola, namibia).
adjacent(botswana, south_africa).
adjacent(mozambique, swaziland).
adjacent(namibia, south_africa).
adjacent(south_africa, swaziland).

no_adjacent(X, Y) :- \+ adjacent(X, Y), \+ adjacent(Y, X).

coloring([]).
coloring([X|Rest]) :- color(X), no_adjacent(X, Rest), coloring(Rest).

% Queen Attack Problem
queen(X) :- integer(X), X >= 1, X =< 7.
attack((R1,C1), (R2,C2)) :- 
    queen(R1), queen(C1), queen(R2), queen(C2),
    (R1 = R2 ; C1 = C2 ; abs(R1 - R2) =:= abs(C1 - C2)).

% Eight Queens Problem
queen8(X) :- integer(X), X >= 1, X =< 8.
attack8((R1,C1), (R2,C2)) :- 
    queen8(R1), queen8(C1), queen8(R2), queen8(C2),
    (R1 = R2 ; C1 = C2 ; abs(R1 - R2) =:= abs(C1 - C2)).

solution([]).
solution([X|Rest]) :- queen8(X), no_attack(X, Rest), solution(Rest).

no_attack(_, []).
no_attack(X, [Y|T]) :- \+ attack8(X, Y), no_attack(X, T).




