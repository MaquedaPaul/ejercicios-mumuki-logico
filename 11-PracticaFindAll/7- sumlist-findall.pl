ingresoFamiliar/2.

ingresoFamiliar(Persona, Ingreso):-
  ingresoTotal(Persona,IngresoTotalPersona),
  findall(IngresoTotalHijo, (padre(Persona,Hijo), ingresoTotal(Hijo,IngresoTotalHijo)),IngresosTotalesHijos),
  sumlist(IngresosTotalesHijos,IngresoHijos),
  Ingreso is IngresoHijos+IngresoTotalPersona.
  

ingresoFamiliar(Persona, Ingreso):-
  ingresoTotal(Persona,Ingreso).