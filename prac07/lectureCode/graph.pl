edge(a,b).
edge(a,c).
edge(b,c).
edge(c,f).
edge(d,e).
edge(f,g).

connected(A,B) :-
  edge(A,B); edge(B,A).

neighbours(A,Set) :-
  findall(B, connected(A,B), Set).

go(From, To, Seen, [To|Seen]) :-
  connected(From, To).
go(From, To, Seen, Path) :-
  connected(From, Between),
  Between \== To,
  \+member(Between, Seen),
  go(Between, To, [Between|Seen], Path).

path(From, To, Path) :-
  go(From, To, [From], Result),
  reverse(Path, Result).

reachable(A,B) :-
  edge(A,B).
reachable(A,B) :-
  edge(A,C),
  reachable(C,B).
