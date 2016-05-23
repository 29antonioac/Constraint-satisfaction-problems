:-lib(ic).

birthday(Friends) :-
  %%% Declaración del dominio
  Friends = [Pedro, Carlos, Rosa, Teresa],
  Friends::[0..1],

  %%%% Declaración de restricciones
  %%%% Cada locomotora tira de un tren cada vez

  Pedro + Carlos #>= 1,
  Rosa + Carlos #>= 1,
  Rosa + Teresa #>= 1,

  Rosa + Pedro #=< 1,
  Teresa + Carlos #=< 1,

  labeling(Friends).
