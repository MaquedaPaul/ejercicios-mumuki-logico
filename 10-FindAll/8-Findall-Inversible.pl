herramientasDemandadasPor/2.

herramientasDemandadasPor(Persona,Herramientas):-
  necesita(Persona,_),
  findall(Herramienta,necesita(Persona,Herramienta),Herramientas).

