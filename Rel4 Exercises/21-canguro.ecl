:-lib(ic).

canguro(Vars) :-
    Vars = [Nombres, Apellidos],
    Nombres = [Keith, Libby, Margo, Nora, Otto],
    Apellidos = [Fell, Gant, Hall, Ivey, Jule],
    Nombres :: [2..6],
    Apellidos :: [2..6],

    %Restricciones

    alldifferent(Nombres),
    alldifferent(Apellidos),

    Libby #= Jule,
    Keith + 1 #= Ivey,
    Ivey + 1 #= Nora,
    Fell + 3 #= Margo,
    2*Otto #= Hall,

    % busqueda
    labeling(Nombres),
    labeling(Apellidos).
