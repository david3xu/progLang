% Define available colors
color(red).
color(green).
color(blue).
color(yellow).

% Define bordering countries
border(Country1, Country2) :-
    color(Country1),
    color(Country2),
    Country1 \= Country2.

% Define the map coloring problem for southern African countries
coloring(SouthAfrica, Namibia, Botswana, Zimbabwe, Mozambique, Zambia, Angola, Malawi, Lesotho, Eswatini) :-
    color(SouthAfrica), color(Namibia), color(Botswana), color(Zimbabwe),
    color(Mozambique), color(Zambia), color(Angola), color(Malawi),
    color(Lesotho), color(Eswatini),
    border(SouthAfrica, Namibia),
    border(SouthAfrica, Botswana),
    border(SouthAfrica, Zimbabwe),
    border(SouthAfrica, Mozambique),
    border(SouthAfrica, Lesotho),
    border(SouthAfrica, Eswatini),
    border(Namibia, Botswana),
    border(Namibia, Zambia),
    border(Namibia, Angola),
    border(Botswana, Zimbabwe),
    border(Botswana, Zambia),
    border(Zimbabwe, Mozambique),
    border(Zimbabwe, Zambia),
    border(Mozambique, Zambia),
    border(Mozambique, Malawi),
    border(Zambia, Angola),
    border(Zambia, Malawi),
    border(Lesotho, Eswatini).

% Query to find a valid coloring
find_coloring :-
    coloring(SA, NA, BO, ZI, MO, ZA, AN, MA, LE, ES),
    write('South Africa: '), write(SA), nl,
    write('Namibia: '), write(NA), nl,
    write('Botswana: '), write(BO), nl,
    write('Zimbabwe: '), write(ZI), nl,
    write('Mozambique: '), write(MO), nl,
    write('Zambia: '), write(ZA), nl,
    write('Angola: '), write(AN), nl,
    write('Malawi: '), write(MA), nl,
    write('Lesotho: '), write(LE), nl,
    write('Eswatini: '), write(ES), nl.


    % press enter to stop 