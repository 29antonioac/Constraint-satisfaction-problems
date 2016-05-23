:-lib(ic).

teste(Digits) :-
    Digits = [T,E,S,F,D,I,N,K,R,A],
    Digits :: [0..9],

  %Restricciones

    alldifferent(Digits),
    T #\= 0,
    F #\= 0,
    D #\= 0,
    K #\= 0,

                  10000*T + 1000*E + 100*S + 10*T + E +
                  10000*F + 1000*E + 100*S + 10*T + E +
                  10000*D + 1000*E + 100*I + 10*N + E
    #= 100000*K + 10000*R + 1000*A + 100*F + 10*T + E,

    % busqueda
    labeling(Digits).
