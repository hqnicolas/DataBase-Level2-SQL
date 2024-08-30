-- Execute as duas consultas abaixo e compare novamente as diferenças entre os planos de acesso de cada
-- uma, das informações geradas pelo SET STATISTICS e também pela quantidade de registros retornados de
-- cada uma. Evidencie as diferenças encontradas entre elas.
-- SELECT NO_MUNICIPIO_ESC, TP_ESCOLA
-- FROM MICRODADOS_ENEM_2021_SC WHERE NO_MUNICIPIO_ESC = 'Treviso'
-- SELECT NO_MUNICIPIO_ESC, TP_ESCOLA
-- FROM MICRODADOS_ENEM_2021_SC


--Gerar os planos de acesso e os dados de set statistics para ambas as consultas.
SELECT NO_MUNICIPIO_ESC, TP_ESCOLA
FROM MICRODADOS_ENEM_2021_SC WHERE NO_MUNICIPIO_ESC = 'Treviso';
go

SELECT NO_MUNICIPIO_ESC, TP_ESCOLA
FROM MICRODADOS_ENEM_2021_SC;
go
