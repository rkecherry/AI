:-initialization(main).

memb(X, [X|_]).
memb(X, [_|T]) :- memb(X, T).

main :-
    write('Enter a list: '),
    read(L),
    write('Enter an element: '),
    read(X),
    (memb(X, L) -> write(X), write(' is a member of '), write(L), write('.');
        write(X), write(' is not a member of '), write(L), write('.')).
