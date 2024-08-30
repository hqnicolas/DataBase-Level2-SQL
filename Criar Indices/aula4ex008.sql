-- Com base nas duas consultas geradas (SELECT sem WHERE e SELECT com WHERE Treviso) e compare a
-- quantidade de registros retornadas em cada uma, os resultados dos SET STATISTICS e dos planos de acesso.
-- Qual a diferença encontrada entre eles?

SELECT COUNT(1)
FROM MICRODADOS_ENEM_2021_SC WHERE NO_MUNICIPIO_ESC = 'Treviso';
go

SELECT COUNT(1)
FROM MICRODADOS_ENEM_2021_SC;
go

--A consulta que retorna 10 linhas e a consulta que retorna 26394 linhas
--precisam ler a mesma quantidade de página de dados.
--ou seja, com WHERE ou SEM WHERE o "peso" de ambas as consultas
--ao o mesmo.

--Table 'MICRODADOS_ENEM_2021_SC'. Scan count 1, logical reads 2981, physical reads 0, page server reads 0, read-ahead reads 0, page server read-ahead reads 0, lob logical reads 0, lob physical reads 0, lob page server reads 0, lob read-ahead reads 0, lob page server read-ahead reads 0.
--Table 'MICRODADOS_ENEM_2021_SC'. Scan count 1, logical reads 2981, physical reads 0, page server reads 0, read-ahead reads 0, page server read-ahead reads 0, lob logical reads 0, lob physical reads 0, lob page server reads 0, lob read-ahead reads 0, lob page server read-ahead reads 0.

--Ambos fazem Clustered Index Scan
