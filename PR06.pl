:- initialization(main).

% base case
power(_, 0, 1).

% recursive case
power(Num, Pow, Ans) :-
    Pow > 0,
    NewPow is Pow - 1,
    power(Num, NewPow, NewAns),
    Ans is Num * NewAns.

% main predicate to read input and compute power
main :-
    write('Enter the base number: '),
    read(Num),
    write('Enter the power: '),
    read(Pow),
    power(Num, Pow, Ans),
    write('The result of '), write(Num), write(' raised to the power '), write(Pow), write(' is: '), write(Ans), nl.
