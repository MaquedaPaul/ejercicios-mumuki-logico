cuantoFalta/1.

cuantoFalta(Cuanto):-
  findall(Cosa, necesita(_,Cosa), Cosas),
  list_to_set(Cosas,CosasSinRepetir),
  length(CosasSinRepetir,Cuanto).
