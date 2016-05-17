:-lib(ic).

profit(Assignments) :-
    Assignments = [ W1P1, W1P2, W1P3, W1P4,
                    W2P1, W2P2, W2P3, W2P4,
                    W3P1, W3P2, W3P3, W3P4,
                    W4P1, W4P2, W4P3, W4P4],

    % Matrix of profits
    P = []( [](7,1,3,4),
            [](8,2,5,1),
            [](4,3,7,2),
            [](3,1,6,3)),

    Assignments #:: [0,1],

    % Sum of rows = 1
    W1P1 + W1P2 + W1P3 + W1P4 #= 1,
    W2P1 + W2P2 + W2P3 + W2P4 #= 1,
    W3P1 + W3P2 + W3P3 + W3P4 #= 1,
    W4P1 + W4P2 + W4P3 + W4P4 #= 1,

    % Sum of cols = 1
    W1P1 + W2P1 + W3P1 + W4P1 #= 1,
    W1P2 + W2P2 + W3P2 + W4P2 #= 1,
    W1P3 + W2P3 + W3P3 + W4P3 #= 1,
    W1P4 + W2P4 + W3P4 + W4P4 #= 1,

    % Profit >= 19
    W1P1 * P[1,1] + W1P2 * P[1,2] + W1P3 * P[1,3] + W1P4 * P[1,4] +
    W2P1 * P[2,1] + W2P2 * P[2,2] + W2P3 * P[2,3] + W2P4 * P[2,4] +
    W3P1 * P[3,1] + W3P2 * P[3,2] + W3P3 * P[3,3] + W3P4 * P[3,4] +
    W4P1 * P[4,1] + W4P2 * P[4,2] + W4P3 * P[4,3] + W4P4 * P[4,4] #>= 19,

    %%% Search
    (foreach(A, Assignments) do
        indomain(A)
    ).

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
