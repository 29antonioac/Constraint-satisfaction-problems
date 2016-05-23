:-lib(sd).

cspTrenes(Lista) :-
  %%% Declaración del dominio
  Lista = [T1,T2,T3,T4],
  Lista&::[l1,l2,l3],

  %%%% Declaración de restricciones
  %%%% Cada locomotora tira de un tren cada vez
  T1 &\= T2,
  T2 &\= T3,
  T2 &\= T4,
  T3 &\= T4,

  T3 &\= l3,

  T4 &\= l2,
  T4 &\= l3,

  %%%% Búsqueda
%  (foreach(V,Lista) do
%    get_domain_as_list(V,D),
%    writeln(D)).

  (foreach(V, Lista) do
    indomain(V)
  ).
