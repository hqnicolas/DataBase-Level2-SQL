-- Crie uma stored procedure que subtraia (3) três valores numéricos inteiros passados como parâmetros de entrada.
-- O resultado deve ser (1) um valor numérico inteiro retornado através de uma variável de saída (output).
-- Depois de criar a procedure, evidencie o funcionamento do código escrevendo um exemplo DE EXECUÇÃO 
-- desta stored procedure (com seus devidos parâmetros) e a leitura (SELECT) da variável de SAIDA 
-- com o resultado da execução da procedure.

CREATE PROCEDURE subtrair_valores
    @valor1 INT,
    @valor2 INT,
    @valor3 INT,
    @resultado INT OUTPUT
AS
BEGIN
    SET @resultado = @valor1 - @valor2 - @valor3;
END;
GO

DECLARE @resultado INT;
EXEC subtrair_valores 10, 5, 2, @resultado OUTPUT;
SELECT 'Resultado da subtração:' + CAST(@resultado AS VARCHAR(10));
