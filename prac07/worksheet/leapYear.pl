leap_year(Y) :- 
    Y mod 4 =:= 0,
    (Y mod 100 =\= 0 ; Y mod 400 =:= 0).