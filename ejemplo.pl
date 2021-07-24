hije/2.
hermanes/2.


hije(herbert, abraham).
hije(homero, abraham).
hije(homero, mona).
hije(marge, clancy).
hije(marge, jacqueline).
hije(patty, clancy).
hije(patty, jacqueline).
hije(selma, clancy).
hije(selma, jacqueline).
hije(bart, homero).
hije(bart, marge).
hije(lisa, homero).
hije(lisa, marge).
hije(maggie, homero).
hije(maggie, marge).
hije(ling, selma).



hermanes(Persona1,Persona2):-
  hije(Persona1,Padre),
  hije(Persona2,Padre),
  Persona2 \= Persona1.


/* swipl ejemplo.pl

*/
