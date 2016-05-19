:- lib(ic).
:- import alldifferent/1 from ic_global.

%
% Based on the work of Joachim Schimpf, IC-Parc
%


solve :-
	% Datos del problema
	Board = [](
	    [](_, 1, _, 6, _, 7, _, _, 4),
	    [](_, 4, 2, _, _, _, _, _, _),
	    [](8, 7, _, 3, _, _, 6, _, _),
	    [](_, 8, _, _, 7, _, _, 2, _),
	    [](_, _, _, 8, 9, 3, _, _, _),
	    [](_, 3, _, _, 6, _, _, 1, _),
	    [](_, _, 8, _, _, 6, _, 4, 5),
	    [](_, _, _, _, _, _, 1, 7, _),
	    [](4, _, _, 9, _, 8, _, 6, _)),
	N is 3,

	% Resolución
	sudoku(N, Board),

	% Imprimimimos tablero
	N2 is 9,
	( for(I,1,N2), param(Board,N2) do
	    ( for(J,1,N2), param(Board,I) do
	    	X is Board[I,J],
			printf(" %2d", [X])
	    ), nl
	), nl.


sudoku(N, Board) :-
	N2 is N*N,
	% Dominio de las variables
	Board[1..N2,1..N2] :: 1..N2,

	% No se pueden repetir elementos en filas ni columnas
	( for(I,1,N2), param(Board,N2) do
	    Row is Board[I,1..N2],
	    alldifferent(Row),
	    Col is Board[1..N2,I],
	    alldifferent(Col)
	),

	% No se pueden repetir elementos en submatrices 3x3
	( multifor([I,J],1,N2,N), param(Board,N) do
	    ( multifor([K,L],0,N-1), param(Board,I,J), foreach(X,SubSquare) do
			X is Board[I+K,J+L]
	    ),
	    alldifferent(SubSquare)
	),

	term_variables(Board, Vars),
	labeling(Vars).
