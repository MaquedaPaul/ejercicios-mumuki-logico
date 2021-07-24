competidorClasifica/1.


competidorClasifica(Competidor):-
  puntajes(Competidor,Puntajes),
  sumlist(Puntajes,Resultado),
  Resultado > 28.


competidorClasifica(Competidor):-
  puntajes(Competidor,Puntajes),
  nth1(SaltoNro1,Puntajes,Puntaje),
  nth1(SaltoNro2,Puntajes,OtroPuntaje),
  Puntaje >= 8,
  OtroPuntaje >= 8,
  SaltoNro1 \= SaltoNro2.


