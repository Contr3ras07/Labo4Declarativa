% si ya es un solo digito se guarda asi nomas
almacenar(N, [N]) :-
    N >= 0, N < 10, !.

% se saca el ultimo digito y se sigue con lo que queda
almacenar(N, L) :-
    N >= 10,
    D is N mod 10,
    Resto is N // 10,
    almacenar(Resto, L1),
    append(L1, [D], L).

pedir_digitos :-
    write('Ingresa un numero entero: '), read(N),
    almacenar(N, L),
    write('Los digitos son: '),
    write(L).
