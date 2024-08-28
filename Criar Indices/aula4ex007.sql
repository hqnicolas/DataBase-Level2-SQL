-- Execute os comandos SET STATISTICS IO ON e SET STATISTICS TIME ON, execute novamente a consulta da
-- questão anterior e guarde os resultados.

SET STATISTICS IO ON;
SET STATISTICS TIME ON;
SELECT  * FROM MICRODADOS_ENEM_2021_SC WHERE NO_MUNICIPIO_ESC = 'Treviso';
SET STATISTICS IO OFF;
SET STATISTICS TIME OFF;
