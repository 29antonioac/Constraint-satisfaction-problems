%Original code:https://github.com/algui91/Eclipse_CLP_Problems
:- lib(fd).
:- lib(cumulative).

% Ejercicio 26: Tareas

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

	SA + 7 #=< SEND,
	SB + 7 #=< SEND,
	SC + 7 #=< SEND,
	SD + 2 #=< SEND,
	SE + 2 #=< SEND,
	SF + 2 #=< SEND,
	SG + 2 #=< SEND,
	SH + 8 #=< SEND,
	SI + 8 #=< SEND,
	SJ + 18 #=< SEND,

	minimize(labeling(Vars),SEND). % Minimizamos la duracion

	% SOlución encontrada [0, 7, 10, 11, 25, 19, 27, 20, 23, 25]
