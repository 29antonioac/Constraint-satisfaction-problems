:-lib(ic).

%%% Segunda versión: CSP tomando como variables los trabajadores
profit(Trabajadores) :-
  %%% Ti es el trabajador i-ésimo
  Trabajadores = [T1,T2,T3,T4],

  %%% j es el producto j-ésimo
  Trabajadores::[1,2,3,4],

  %%% Declaración de restricciones
  %%% Cada producto está asignado a un único trabajador
  alldifferent(Trabajadores),

  %%% La efectividad del trabajador i-ésimo es el índice
  %%% del trabajador en la lista de producciones dada
  element(T1, [7,1,3,4], E1),
  element(T2, [8,2,5,1], E2),
  element(T3, [4,3,7,2], E3),
  element(T4, [3,1,6,3], E4),

  %%% La efectividad total debe ser al menos 19
  E1 + E2 + E3 + E4 #>= 19,

  %%% Búsqueda
  (foreach(T, Trabajadores) do
    indomain(T)
  ).
