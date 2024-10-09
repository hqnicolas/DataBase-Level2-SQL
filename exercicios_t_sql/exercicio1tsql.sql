-- 1. Crie uma stored procedure que some dois valores inteiros passados como parâmetros de entrada da stored
-- procedure. O resultado deve ser um valor inteiro.
-- Use o modelo abaixo sempre como padrão inicial de código.
CREATE OR ALTER PROCEDURE pr_soma (@var1 int, @var2 int, @var3 int OUTPUT) AS
BEGIN
SELECT @var1 + @var2
END
GO


--faça o uso do procedimento
Declare @var3 int
EXEC pr_soma 300, 25, @var3 output
