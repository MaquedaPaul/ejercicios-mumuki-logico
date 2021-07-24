ingresoTotal/2.

ingresoTotal(Persona,IngresoTotal):-
 ingreso(Persona,_,_),
 findall(Ingreso,ingreso(Persona,_,Ingreso),Ingresos),
 sumlist(Ingresos,IngresoTotal).
  