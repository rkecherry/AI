:- initialization(main).

main :-
    write('Enter the first number: '),
    read(X),
    write('Enter the second number: '),
    read(Y),
    Sum is X + Y,
    write('The sum of '),write(X),write(' and '),write(Y),write(' is : '), write(Sum), nl.