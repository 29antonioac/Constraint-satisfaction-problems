:-lib(fd).

cambio(N):-

  Monedas = [DosE, Uno, Cincuenta, Veinte, Diez, Cinco, DosC, UnC],

  Monedas::[0..N],

  DosE * 200 + Uno * 100 + 50 * Cincuenta + 20 * Veinte + 10 * Diez + 5 * Cinco + 2 * DosC + UnC #= N,
  DosE + Uno + Cincuenta + Veinte + Diez + Cinco + DosC + UnC #= NumMonedas,

  minimize(labeling(Monedas),NumMonedas),
  write(Monedas).
