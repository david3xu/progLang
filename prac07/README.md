# reference: https://www.youtube.com/watch?v=SykxWpFwMGs

# install 
brew install gnu-prolog

# run prolog
gprolog

# exit 
halt.

# compile
[db].

# load db
consult('db.pl').

# show content of your db
listing.

# write two lines
write('Hello World'), nl, 
write('Let\'s Program').

# loves(vincent, X).

# fact 
# female(mia).
# listing(male).

# male(X), female(Y).
# ;

# rules: a fact is going to depend on a group of other facts 

# define rules: 
  runs(vincent).
  dances(marcellus).

# defien predicates 
does_marcellus_dance.
swims(mia).
swim(mia).

# variable: uppercase X, Y,
female(X).
;

parent(X, mia), dances(X).

parent(Y, bob),
parent(X, Y).

# get_grandchild.
# get_grandparent.

# grand_parent(bob, A)
# blushes(derek).

# what_grade(5).

# structures 
# recursion
# input/output 
