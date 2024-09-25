% Determine if two queens can attack each other
attack((Row1, Col1), (Row2, Col2)) :-
    between(1, 8, Row1),
    between(1, 8, Col1),
    between(1, 8, Row2),
    between(1, 8, Col2),
    (   Row1 =:= Row2
    ;   Col1 =:= Col2
    ;   abs(Row1 - Row2) =:= abs(Col1 - Col2)
    ).

% query 
% attack((1, 1), (2, 2)).
% attack((1, 1), (2, 3)).
% attack((1, 1), (3, 2)).
% attack((1, 1), (4, 4)).
% attack((1, 1), (5, 5)).
% attack((1, 1), (6, 6)).
% attack((1, 1), (7, 7)).
% attack((1, 1), (8, 8)).