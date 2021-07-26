tiempoTotalVuelo/2.
escalaAburrida/2.
vueloLargo/1.
conectados/2.
bandaDeTres/3.
distanciaEnEscalas/3.
vueloLento/1.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
descomponerEnDestinos/2.
tiempoEnEscalas/2.
esAburrida/1.


%%descomponerEnCiudades(vuelo(CodVuelo,_,Destinos),Ciudades):-
  %%findall(Ciudad,member(escala(Ciudad,_),Destinos),Ciudades).

tiempoEnEscalas(Destinos,TiempoTotalEscala):-
  findall(Tiempo,member(escala(_,Tiempo),Destinos),TiempoEscala),
  sumlist(TiempoEscala,TiempoTotalEscala).
  
tiempoEnTramos(Destinos,TiempoTotalTramo):-
  findall(Tiempo,member(tramo(Tiempo),Destinos),TiempoTramo),
  sumlist(TiempoTramo,TiempoTotalTramo).
  
esAburrida(escala(_,Tiempo)):-
  Tiempo > 3.

esEscala(CodVuelo,escala(Ciudad,Tiempo)):-
  vuelo(CodVuelo,_,Destinos),
  member(escala(Ciudad,Tiempo),Destinos).
   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


tiempoTotalVuelo(CodVuelo,Tiempo):-
  vuelo(CodVuelo,_,Destinos),
  tiempoEnEscalas(Destinos,TiempoEscala),
  tiempoEnTramos(Destinos,TiempoTramo),
  Tiempo is TiempoEscala+TiempoTramo.


escalaAburrida(CodVuelo,Escala):-
  vuelo(CodVuelo,_,Destinos),
  member(Escala,Destinos),
  esAburrida(Escala).


vueloLargo(CodVuelo):-
  vuelo(CodVuelo,_,Destinos),
  tiempoEnTramos(Destinos,TiempoTramo),
  TiempoTramo > 10.


conectados(CodVuelo1,CodVuelo2):-
  vuelo(CodVuelo1,_,Destinos1),
  vuelo(CodVuelo2,_,Destinos2),
  CodVuelo1 \= CodVuelo2,
  member(escala(Ciudad,_),Destinos1),
  member(escala(Ciudad,_),Destinos2).


bandaDeTres(CodVuelo1,CodVuelo2,CodVuelo3):-
  conectados(CodVuelo1,CodVuelo2),
  conectados(CodVuelo2,CodVuelo3).



distanciaEnEscalas(Ciudad1,Ciudad2,Distancia):-
  vuelo(_,_,Destinos),
  findall(Escala,member(escala(Escala,_),Destinos),Escalas),
  nth0(DistEscala1,Escalas,Ciudad1),
  nth0(DistEscala2,Escalas,Ciudad2),
  Distancia is abs(DistEscala1 - DistEscala2).


vueloLento(CodVuelo):-
  vuelo(CodVuelo,_,Destinos),
  not(vueloLargo(CodVuelo)),
  forall(esEscala(CodVuelo,Escala),esAburrida(Escala)).
