:-lib(fd).

mochila(Items) :-
  %%% Declaración del dominio
  Items = [MAP, COMPASS, WATER, SANDWICH, GLUCOSE, TIN, BANANA, APPLE, CHEESE, BEER, SUNTAN, CAMERA],
  Items::[0..31],

  %%%% Peso máximo: 275 Kg
  MAP * 9
  + COMPASS * 13
  + WATER * 153
  + SANDWICH * 50
  + GLUCOSE * 15
  + TIN * 68
  + BANANA * 27
  + APPLE * 39
  + CHEESE * 23
  + BEER * 52
  + SUNTAN * 11
  + CAMERA * 32 #=< 275,

  %%% Cálculo del beneficio
  Beneficio #= MAP * 150
  + COMPASS * 35
  + WATER * 200
  + SANDWICH * 160
  + GLUCOSE * 60
  + TIN * 45
  + BANANA * 60
  + APPLE * 40
  + CHEESE * 30
  + BEER * 10
  + SUNTAN * 70
  + CAMERA * 30,

  %%% Queremos maximizar el beneficio, así que minimizamos su negativo.
  BeneficioNegativo #= -Beneficio,

  minimize(labeling(Items), BeneficioNegativo).
