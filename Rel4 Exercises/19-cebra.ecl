:-lib(fd).

cebra(Vars):-
  Vars = [Nacionalidades, Profesiones, Animal, Bebida],
  Nacionalidades = [Vasco, Catalan, Gallego, Navarro, Andaluz],
  Colores = [Roja, Blanca, Verde, Amarilla, Azul],
  Profesiones = [Pintor,Escultor, Diplomatico, Violinista, Medico],
  Animal = [Perro, Caracoles, Zorro, Caballo, Cebra],
  Bebida = [Te, Cafe, Leche, Zumo, Agua],

  Nacionalidades::[1..5],
  Colores::[1..5],
  Profesiones::[1..5],
  Animal::[1..5],
  Bebida::[1..5],

  Vasco #= Roja,
  Catalan #= Perro,
  Gallego #= Pintor,
  Navarro #= Te,
  Andaluz #= 1,
  Verde #= Cafe,
  Verde #= Blanca + 1,
  Escultor #= Caracoles,
  Diplomatico #= Amarilla,
  Leche #= 3,
  abs(Andaluz - Azul) #= 1,
  Violinista #= Zumo,
  abs(Zorro - Medico) #= 1,
  abs(Caballo - Diplomatico) #= 1,

  alldifferent(Nacionalidades),
  alldifferent(Colores),
  alldifferent(Profesiones),
  alldifferent(Animal),
  alldifferent(Bebida),

  labeling(Nacionalidades),
  labeling(Colores),
  labeling(Profesiones),
  labeling(Animal),
  labeling(Bebida),

  write("La cebra está en la casa "),write(Cebra),
  write("\nQuien bebe agua es quien vive en "),write(Agua).
