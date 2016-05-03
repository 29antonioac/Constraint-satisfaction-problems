:-lib(ic).
:-lib(ic_global).

puzzle(Vector):-
    dim(Vector,[10]),
    Vector[1..10]::[0..9],

    (for(I,0,9), param(Vector) do
        J is I+1,
        Valor is Vector[J],
        occurrences(I, Vector[1..10], Valor)
    ),

    labeling(Vector[1..10]).
