:-lib(fd).

mochila(Items) :-
  %%% Declaración del dominio
  Items = [W,P,C],
  Items::[0..4],

  %%%% Declaración de restricciones
  4*W +3*P + 2*C #=< 9,
  15*W +10*P +7*C #>= 30,

  labeling(Items).

maximizar(Items):-
  %%% Declaración del dominio
  Items = [W,P,C],
  Items::[0..4],

  %%%% Declaración de restricciones
  4*W +3*P + 2*C #=< 9,
  15*W +10*P +7*C #>= 30,

  Coste #= 15*W + 10*P + 7*C,
  CosteNeg #= -Coste,
  minimize(labeling(Items), CosteNeg).
