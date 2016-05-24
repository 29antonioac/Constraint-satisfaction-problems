:- lib(fd).

% Ejercicio 26: Tareas

tareas(Vars) :-
	% Variables
	Vars=[A,B,C,D,E,F,G,H,I,J,Final], % Tiempos de inicio
	Vars::[1..100], % Dominio de las variables,

	A + 7 #=< J,
	B + 7 #=< J,
	C + 7 #=< J,
	D + 2 #=< J,
	E + 2 #=< J,

	D + 2 #=< C,
	E + 2 #=< C,
	A + 7 #=< C,

	D + 2 #=< E,
	D + 2 #=< F,

	E + 2 #=< H,
	E + 2 #=< I,
	F + 2 #=< H,
	F + 2 #=< I,
	C + 7 #=< H,
	C + 7 #=< I,

	F + 2 #=< G,
	A + 7 #=< B,

	G + 2 #=< Final,
	H + 8 #=< Final,
	I + 8 #=< Final,
	J + 18 #=< Final,

	minimize(labeling(Vars),Final). % Minimizamos la duracion
