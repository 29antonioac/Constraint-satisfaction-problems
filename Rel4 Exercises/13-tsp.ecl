:-lib(fd).

tsp(Cities,Cost):-
	Cities=[X1, X2, X3, X4, X5, X6, X7],

	element(X1, [0,4,8,10,7,14,15], CostX1),
	element(X2, [4,0,7,7,10,12,5], CostX2),
	element(X3, [8,7,0,4,6,8,10], CostX3),
	element(X4, [10,7,4,0,2,5,8], CostX4),
	element(X5, [7,10,6,2,0,6,7], CostX5),
	element(X6, [14,12,8,5,6,0,5], CostX6),
	element(X7, [15,5,10,8,7,5,0], CostX7),

  Cost #= CostX1+CostX2+CostX3+CostX4+CostX5+CostX6+CostX7,

  gfd:circuit(Cities),

  minimize(labeling(Cities), Cost).
