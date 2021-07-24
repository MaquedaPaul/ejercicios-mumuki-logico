puntajeCompetidor/3.

puntajeCompetidor(Persona,SaltoNro,Puntaje):-
  puntajes(Persona,Puntajes),
  nth1(SaltoNro,Puntajes,Puntaje).
  