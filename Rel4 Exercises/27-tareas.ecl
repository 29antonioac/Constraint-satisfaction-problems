%Original code:https://github.com/algui91/Eclipse_CLP_Problems
:- lib(fd).
:- lib(cumulative).

% Ejercicio 27: Tareas

tareas(Vars) :-
	% Variables
	Vars=[SA,SB,SC,SD,SE,SF,SG,SH,SI,SJ], % Tiempos de inicio
	Vars::[0..100], % Dominio de las variables,

	SA + 7 #=< SJ,
	SB + 7 #=< SJ,
	SC + 7 #=< SJ,
	SD + 2 #=< SJ,
	SE + 2 #=< SJ,

	SD + 2 #=< SC,
	SE + 2 #=< SC,
	SA + 7 #=< SC,

	SD + 2 #=< SE,
	SD + 2 #=< SF,

	SE + 2 #=< SH,
	SE + 2 #=< SI,
	SF + 2 #=< SH,
	SF + 2 #=< SI,
	SC + 7 #=< SH,
	SC + 7 #=< SI,

	SF + 2 #=< SG,
	SA + 7 #=< SB,

	SA + 7 +
	SB + 7 +
	SC + 7 +
	SD + 2 +
	SE + 2 +
	SF + 2 +
	SG + 2 +
	SH + 8 +
	SI + 8 +
	SJ + 18 #=< SEND,

	cumulative(	[SA,SB,SC,SD,SE,SF,SG,SH,SI,SJ], % Tiempos inicio
				[7,7,7,2,2,2,2,8,8,18],	% Duraciones
				[1,1,1,1,1,1,1,1,1,1], % Cantidad de recursos
				3), 	% Max recursos a usar

	minimize(labeling(Vars),SEND). % Minimizamos la duracion

	% SOlución encontrada [0, 7, 10, 11, 25, 19, 27, 20, 23, 25]
