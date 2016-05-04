:-lib(ic).

%%% Segunda versión: CSP tomando como variables los trabajadores
profit2(Workers) :-
  %%% Ti es el trabajador i-ésimo
  Workers = [W1,W2,W3,W4],

  %%% j es el producto j-ésimo
  Workers::[1,2,3,4],

  %%% Declaración de restricciones
  %%% Cada producto está asignado a un único trabajador
  alldifferent(Workers),

  %%% La efectividad del trabajador i-ésimo es el índice
  %%% del trabajador en la lista de producciones dada
  element(W1, [7,1,3,4], E1),
  element(W2, [8,2,5,1], E2),
  element(W3, [4,3,7,2], E3),
  element(W4, [3,1,6,3], E4),

  %%% La efectividad total debe ser al menos 19
  E1 + E2 + E3 + E4 #>= 19,

  %%% Búsqueda
  (foreach(W, Workers) do
    indomain(W)
  ).
