:- initialization(main).

reverse(L, R) :- rev(L, [], R).

rev([], R, R).
rev([H|T], Acc, R) :- rev(T, [H|Acc], R).

main :-
    write('Enter a list: '),
    read(L),
    reverse(L, R),
    write('Given List L : '),write(L),nl,nl,
    write('The reversed list is: '), write(R),
    break.