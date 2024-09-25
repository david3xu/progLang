sort(List) :-
    bubble_sort(List, Sorted),
    write('Sorted List: '),
    write(Sorted), nl.

bubble_sort([], []).
bubble_sort([H|T], [H|Sorted]) :-
    bubble_sort(T, Sorted).

bubble_sort([H1, H2|T], [Min, Max|Sorted]) :-
    (   H1 @< H2
    ->  Min = H1,
        bubble_sort([H2|T], [Max|Sorted])
    ;   Min = H2,
        bubble_sort([H1|T], [Max|Sorted])
    ).


% sort([3, 1, 4, 2], Sorted).