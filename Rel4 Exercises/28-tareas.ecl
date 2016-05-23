:- lib(fd).
:- lib(cumulative).

% Ejercicio 27: Tareas

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

    cumulative(	[A,B,C,D,E,F,G,H,I,J], % Tiempos inicio
				[7,10,4,6,2,7,4,4,8,11],
				[1,1,1,1,1,1,1,1,1,1],
				1), % Usos y cantidad de recursos compartidos

    cumulative(	[A,B,C,D,E,F,G,H,I,J], % Tiempos inicio
    			[5,7,11,2,4,2,5,8,2,18],
    			[1,1,1,1,1,1,1,1,1,1],
    			1), % Usos y cantidad de recursos   compartidos

    cumulative(	[A,B,C,D,E,F,G,H,I,J], % Tiempos inicio
				[8,4,7,3,8,5,2,3,4,10],
				[1,1,1,1,1,1,1,1,1,1],
				1), % Usos y cantidad de recursos compartidos

	minimize(labeling(Vars),Final). % Minimizamos la duracion
