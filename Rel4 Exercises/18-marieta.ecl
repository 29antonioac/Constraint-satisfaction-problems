:-lib(ic).

marieta(Vars) :-
    Vars = [Calzado, Tiendas],
    Calzado = [Zapatillas, Planos, Botas, Sandalias],
    Tiendas = [CorteIngles, Carrefour, Alcampo, Kiabi],
    Calzado :: [1..4],
    Tiendas :: [1..4],

    %Restricciones

    alldifferent(Calzado),
    alldifferent(Tiendas),

    Planos #= Carrefour,
    Kiabi #\= Botas + 1,
    CorteIngles #= 2,
    Sandalias #= Alcampo + 2,

    % busqueda
    labeling(Calzado),
    labeling(Tiendas).
