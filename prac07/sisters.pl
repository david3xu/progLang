% Facts and rules
% sister(catherine, john).
sister(X, Y) :- sister(Y, X).

% Query
?- \+ sister(catherine, john).
