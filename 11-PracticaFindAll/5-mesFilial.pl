mesFilial/2.

mesFilial(Persona,Mes):-
  padre(Hijo,Persona),
  ingreso(Persona,Mes,IngresoPersona),
  ingreso(Hijo,Mes,IngresoHijo),
  IngresoPersona < IngresoHijo.

