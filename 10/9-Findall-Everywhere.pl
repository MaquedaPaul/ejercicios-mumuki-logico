noLaNecesitaNadie(Herramienta):- %No es lógico
  findall(Persona, necesita(Persona,Herramienta), Personas),
  length(Personas, 0).


%Si aplica lógico:
noLaNecesitaNadie(Herramienta):-
  not(necesita(_,Herramienta)).

