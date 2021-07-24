costoTotalDeHerramientasDemandadas/1.

costoTotalDeHerramientasDemandadas(Costo):-
  findall(CostoHerramienta,(herramientaDemandada(Herramienta), costoHerramienta(Herramienta,CostoHerramienta)),Herramientas),
  sumlist(Herramientas,Costo).
