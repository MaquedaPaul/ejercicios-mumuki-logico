buenPasar/1.


buenPasar(Persona):-
  ingreso(Persona, enero,Ingreso),
  Ingreso > 2200.
  
buenPasar(Persona):-
  ingreso(Persona, _,Ingreso),
  Ingreso > 3000.
  
buenPasar(Persona):-
  ingreso(Persona, Mes1,Ingreso1),
  Ingreso1 > 2500,
  ingreso(Persona, Mes2,Ingreso2),
  Ingreso2 > 2500,
  Mes1 \= Mes2.
  