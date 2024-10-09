-- Crie uma stored procedure que calcule o IMC (índice de massa corporal). O resultado deve ser retornado
-- através de uma variável de saída e o valor numérico com somente 2 casas após a vírgula (utilize a função
-- ROUND() para arredondamento de casas decimais). Depois da execução da stored procedure, execute um
-- SELECT na variável de saída para evidenciar o valor recebido através da execução da stored procedure.
-- Formula IMC = Massa (kg) / Altura (m) 2

-- Referências
-- Função potência: POWER(x, y) ---> Onde x
-- y
-- Funções matemáticas T-SQL: https://learn.microsoft.com/pt-br/sql/t-sql/functions/mathematical-functionstransact-sql?view=sql-server-ver16
-- FUNÇÃO ROUND(): https://learn.microsoft.com/pt-br/sql/t-sql/functions/round-transact-sql?view=sqlserver-ver16


CREATE OR ALTER PROCEDURE pr_calcular_imc  
    @massa FLOAT,  
    @altura FLOAT,
    @resultado FLOAT OUTPUT
AS
BEGIN
    -- Calcula o IMC e arredonda para 2 casas decimais
    SET @resultado = ROUND(@massa / (@altura * @altura), 2); 
SELECT @resultado AS "IMC";
END;
GO

-- Executa a stored procedure e exibe o resultado
DECLARE @resultado DECIMAL(10,2);
EXEC pr_calcular_imc  152.00, 1.92, @resultado output