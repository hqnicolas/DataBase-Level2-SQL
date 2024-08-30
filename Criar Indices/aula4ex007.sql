-- Execute os comandos SET STATISTICS IO ON e SET STATISTICS TIME ON, execute novamente a consulta da
-- questão anterior e guarde os resultados.

SET STATISTICS IO ON;
SET STATISTICS TIME ON;
SELECT  * FROM MICRODADOS_ENEM_2021_SC WHERE NO_MUNICIPIO_ESC = 'Treviso';
SET STATISTICS IO OFF;
SET STATISTICS TIME OFF;


--Table 'MICRODADOS_ENEM_2021_SC'. Scan count 1, logical reads 2981, physical reads 0, page server reads 0, read-ahead reads 42, page server read-ahead reads 0, lob logical reads 0, lob physical reads 0, lob page server reads 0, lob read-ahead reads 0, lob page server read-ahead reads 0.

-- SQL Server Execution Times:
--   CPU time = 0 ms,  elapsed time = 38 ms.
