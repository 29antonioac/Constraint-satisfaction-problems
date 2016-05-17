:-lib(fd).

scheduling(Tasks) :-
  %%% Declaración del dominio
  Tasks = [A,B,C,D,E,F],
  Tasks::[0..25],

  %%%% Declaración de restricciones
  A + 2 #=< B,
  B + 3 #=< C,
  F + 3 #=< E,
  E + 5 #=< C,
  D + 1 #=< C,

  A #=< 10,
  B #=< 15,
  C #=< 25,
  D #=< 20,
  E #=< 25,
  F #=< 5,

  A #>= 0,
  B #>= 0,
  C #>= 5,
  D #>= 0,
  E #>= 10,
  F #>= 0,

  labeling(Tasks).

% maximizar(Tasks):-
%   %%% Declaración del dominio
%   Tasks = [W,P,C],
%   Tasks::[0..4],
%
%   %%%% Declaración de restricciones
%   4*W +3*P + 2*C #=< 9,
%   15*W +10*P +7*C #>= 30,
%
%   Coste #= 15*W + 10*P + 7*C,
%   CosteNeg #= -Coste,
%   minimize(labeling(Tasks), CosteNeg).
