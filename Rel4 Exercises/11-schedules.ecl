:-lib(ic).

schedule(Workers) :-
  %%% Workers
  Workers = [Pedro, Juana, Ana, Yago, David, Maria],

  %%% Workers[i] has value j if his/her class is scheduled
  %%% at hour j
  Workers::[1..6],

  %%%%%% Restrictions %%%%%%
  %%% Every class should have a different schedule
  alldifferent(Workers),

  %%% All workers have a limited schedule
  3 #=< Pedro, Pedro #=< 6,
  3 #=< Juana, Juana #=< 4,
  2 #=< Ana, Ana #=< 5,
  2 #=< Yago, Yago #=< 4,
  3 #=< David, David #=< 4,
  1 #=< Maria, Maria #=< 6,

  % %%% Search
  labeling(Workers).
