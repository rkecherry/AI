:- initialization(main).

conc([], L, L).
conc([H|T], L, [H|R]) :- conc(T, L, R).

main :-
    write('Enter the first list: '),
    read(L1),
    write('Enter the second list: '),
    read(L2),
    conc(L1, L2, L3),
    write('Given L1 : '),write(L1),nl,
    write('Given L2 : '),write(L2),nl,
    write('The concatenated list L3 is: '), write(L3), write('.').