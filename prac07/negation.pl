% Define some facts
bird(penguin).
bird(sparrow).
bird(eagle).

can_fly(sparrow).
can_fly(eagle).

cant_fly(X) :- bird(X), \+ can_fly(X).

% Queries
% ?- cant_fly(penguin).
% ?- cant_fly(sparrow).
% ?- cant_fly(ostrich).


