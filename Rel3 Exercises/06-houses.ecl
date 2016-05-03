:-lib(ic).

cspHouses(Houses) :-
  %%% Declaración del dominio
  Houses = [A,B,C,D],
  Houses::[1..4],

  %%%% Declaración de restricciones
  %%%% Cada locomotora tira de un tren cada vez
  alldifferent(Houses),
  D #< B,
  B #= A+1,
  abs(B-C) #> 1,
  D #\= 2,
  C #\= 4,

  labeling(Houses).
