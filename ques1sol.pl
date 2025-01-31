female(liz).
female(pat).
female(ann).
male(tom).
male(bob).
male(jim).

parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

grandparent(X, Z) :-  
  parent(X, Y), 
  parent(Y, Z).

same_parent(X, Y) :- 
  parent(Z, X), 
  parent(Z, Y), 
  X \= Y.

has_child(X) :- 
  parent(X, _).

offspring(X, Y) :-
  parent(X, Y).

mother(X, Y) :-
  parent(X,Y),
  female(X).

sister(X, Y) :-
  same_parent(X, Y),
  female(X).

happy(X) :-
	has_child(X).

hastwochildren(X) :- 
  parent(X, Y),
  sister(Y,_).

grandchild(X, Z) :-  
  parent(Y, X), 
  parent(Z, Y).

aunt(X,Y) :-
  parent(Z,Y),
  sister(X,Z).

predecessor(X, Z) :-
  parent(X, Z).

predecessor(X, Z) :-
  parent(X, Y),
  predecessor(Y, Z).


% New relations
maternalgrandmother(X,Y) :-
  mother(X,Z),
  parent(Z,Y).

maternalgrandfather(X,Y) :-
  parent(X,Z),
  mother(Z,Y),
  male(X).

paternalgrandmother(X,Y) :-
  mother(X,Z),
  parent(Z,Y),
  male(Z).

paternalgrandfather(X,Y) :-
  parent(X,Z),
  parent(Z,Y),
  male(X).
