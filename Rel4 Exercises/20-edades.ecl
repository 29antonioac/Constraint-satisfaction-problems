:-lib(ic).

edades(Vars) :-
    Vars = [Alex, Mama, Papa],
    Vars :: [0..840],

    %Restricciones
    Alex + Mama + Papa #= 70*12,
    6*Alex #= Papa,

    2 * (Alex + X) #= Papa + X,
    Alex + Mama + Papa + 3*X #= 70*12*2,

    % busqueda
    labeling(Vars).
