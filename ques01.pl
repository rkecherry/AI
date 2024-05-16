parent(pam,bob). %pam is parent of bob
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

female(pam).
female(ann).
female(pat).
female(liz).
male(bob).
male(tom).
male(jim).

%Rules 
offspring(Y,X):-parent(X,Y). %Y is an offspring of X if X is a parent of Y

% X is a mother of Y if X is a parent of Y and X is a female
mother(X,Y):-parent(X,Y),female(X).

%X is grandparent of Z is X is a parnet of Y and Y is parent of Z
grandparent(X,Z):-parent(X,Y),parent(Y,Z).

%X is a Sister of Y if X and Y have the same parent and X is female and X and Y are different
sister(X,Y):-parent(Z,X),parent(Z,Y),female(X),different(X,Y).

%Rule pr1: X is a predecessor of Z
predecessor(X,Z):-parent(X,Z).

%Rule pr2: X is a predecessor of Z
predecessor(X,Z):-parent(X,Y),predecessor(Y,Z).