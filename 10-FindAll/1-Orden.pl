puedePrestar(Alguien, Otro, Objeto) :-
      tiene(Alguien, Objeto),
      necesita(Otro, Objeto),
      Alguien \= Otro.
puedePrestar(Alguien, Otro, Objeto) :-
      Alguien \= Otro,
      tiene(Alguien, Objeto),
      necesita(Otro, Objeto).









