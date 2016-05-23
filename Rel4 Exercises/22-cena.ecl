:-lib(fd).

cena(Vars):-
  Vars = [Abuelos, Padres, Ninos],

  Abuelos::[1..6],
  Padres::[1..10],
  Ninos::[1..40],

  Abuelos + Padres + Ninos #= 20,
  Abuelos * 3 + Padres + Ninos / 2 #= 20,

  labeling(Vars).
