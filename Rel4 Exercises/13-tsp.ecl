:-lib(fd).
:- import circuit/1 from gfd.

tsp(Cities,Cost):-
    % Variables. Xi es la ciudad que se visita en el i-ésimo lugar
	Cities=[X1, X2, X3, X4, X5, X6, X7],
    Cities::[1..7],

    % Imponemos que sea un circuito hamiltoniano. Esto ya define
    % que Cities debe ser una permutación de [1,...,7]
    circuit(Cities),

    % El coste es el índice representado por cada variable de las
    % filas de la matriz de costes
	element(X1, [0,4,8,10,7,14,15], CostX1),
	element(X2, [4,0,7,7,10,12,5], CostX2),
	element(X3, [8,7,0,4,6,8,10], CostX3),
	element(X4, [10,7,4,0,2,5,8], CostX4),
	element(X5, [7,10,6,2,0,6,7], CostX5),
	element(X6, [14,12,8,5,6,0,5], CostX6),
	element(X7, [15,5,10,8,7,5,0], CostX7),

    % Coste total
    Cost #= CostX1+CostX2+CostX3+CostX4+CostX5+CostX6+CostX7,

    % De entre todos los encontrados, nos quedamos con el de menor coste
    minimize(labeling(Cities), Cost).
