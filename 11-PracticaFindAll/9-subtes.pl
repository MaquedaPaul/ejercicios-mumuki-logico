estaEn/2.
distancia/3.
mismaAltura/2.
viajeFacil/2.
obtenerEstacionesLinea/2.
alturaEstacion/1.
seConectan/2.


seConectan(Linea1,Linea2):-
  estaEn(Estacion1,Linea1),
  estaEn(Estacion2,Linea2),
  Linea1 \= Linea2,
  combinacion(Estaciones),
  member(Estacion1,Estaciones),
  member(Estacion2,Estaciones).

obtenerEstacionesLinea(Linea,Estaciones):-
  linea(Linea,Estaciones).
  
alturaEstacion(Estacion,Altura):-
  estaEn(Estacion,Linea),
  obtenerEstacionesLinea(Linea,Estaciones),
  nth1(Altura,Estaciones,Estacion).

estaEn(Estacion,Linea):-
  obtenerEstacionesLinea(Linea,Estaciones),
  member(Estacion,Estaciones).

distancia(Estacion1,Estacion2,CantidadEstaciones):-
  estaEn(Estacion1,Linea),
  estaEn(Estacion2,Linea),
  obtenerEstacionesLinea(Linea,Estaciones),
  nth1(NumEstacion1,Estaciones,Estacion1),
  nth1(NumEstacion2,Estaciones,Estacion2),
  abs(NumEstacion1-NumEstacion2,CantidadEstaciones).
  
mismaAltura(Estacion1,Estacion2):-
  alturaEstacion(Estacion1,Altura1),
  alturaEstacion(Estacion2,Altura2),
  Altura1 == Altura2.

viajeFacil(Estacion1,Estacion2):-
  estaEn(Estacion1,Linea),
  estaEn(Estacion2,Linea).
  
viajeFacil(Estacion1,Estacion2):-
  estaEn(Estacion1,Linea1),
  estaEn(Estacion2,Linea2),
  seConectan(Linea1,Linea2).
