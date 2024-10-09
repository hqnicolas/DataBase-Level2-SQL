-- Crie uma stored procedure que some quatros valores inteiros passados como parâmetros de entrada da
-- stored procedure. O resultado deve ser um valor inteiro.
-- Implementar no seu código uma validação no preenchimento dos parâmetros no momento da execução da
-- stored procedure e no caso da ausência de algum deles, gerar uma mensagem via PRINT informando o erro.
-- Ex.:
DECLARE @v1 int = 1, @v2 int, @v3 int = null, @v4 int = 10
exec pr_somas @v1, @v2, @v3, @v4
-- RESULTADO:
-- Valor da variável @v2 não encontrado. Informe um valor para @v2 e execute novamente.



CREATE PROCEDURE pr_somas
    @var1 INT,
    @var2 INT = NULL,
    @var3 INT = NULL,
    @var4 INT = NULL
AS
BEGIN
    -- Validar parâmetros
    IF @var2 IS NULL OR @var3 IS NULL OR @var4 IS NULL
    BEGIN
        PRINT 'Valor da variável ' + 
              CASE WHEN @var2 IS NULL THEN ' @v2' 
                   WHEN @var3 IS NULL THEN ' @v3' 
                   ELSE ' @v4' END + 
              ' não encontrado. Informe um valor para ' + 
              CASE WHEN @var2 IS NULL THEN '@v2' 
                   WHEN @var3 IS NULL THEN '@v3' 
                   ELSE '@v4' END + ' e execute novamente.';
        RETURN;  -- Interrompe a execução da stored procedure caso haja erro na validação
    END

    -- Calcular a soma
    DECLARE @soma INT;
    SET @soma = @var1 + ISNULL(@var2, 0) + ISNULL(@var3, 0) + ISNULL(@var4, 0); 

    SELECT @soma AS Somatoria;  
END;



----------------------------------
-- Execute o procedimento:
-- Execute com todos os parametros:
EXEC pr_somas 10, 20, 30, 40;

-- Execute faltando parametros
-- isso vai fazer com que uma mensagem de erro seja gerada
DECLARE @v1 int = 10, @v2 int = NULL, @v3 int = 5, @v4 int = 8
EXEC pr_somas @v1, @v2, @v3, @v4  


