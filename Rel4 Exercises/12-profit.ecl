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

%%% Third version: CSP with the products as variables
profit3(Products) :-
    %%% Pi is the i-th product
    Products = [P1,P2,P3,P4],

    %%% j is the j-th product
    Products::[1,2,3,4],

    %%% Restrictions
    %%% Every worker should work just one product
    alldifferent(Products),

    %%% The effectivity of i-th product is the index of the
    %%% product in the list of effectivities provided.
    element(P1, [7,8,4,3], E1),
    element(P2, [1,2,3,1], E2),
    element(P3, [3,5,7,6], E3),
    element(P4, [4,1,2,3], E4),

    %%% The total effectivity should be at least 19
    E1 + E2 + E3 + E4 #>= 19,

    %%% Search
    (foreach(P, Products) do
        indomain(P)
    ).
