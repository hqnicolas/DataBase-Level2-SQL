-- Crie uma store procedure que receba um código de apólice como parâmetro de entrada e retorne por
-- mensagem de PRINT se ela está ‘ATIVA’ ou ‘VENCIDA’ ou ‘INEXISTENTE’.

CREATE OR ALTER PROCEDURE sp_StatusApolice (
    @CodApolice INT
)
AS
BEGIN
    DECLARE @Status INT;

    SELECT TOP 1 
        @Status = CASE 
            WHEN DataVencimento > GETDATE() THEN 'ATIVA'
            ELSE 'VENCIDA'
        END
    FROM Apolices
    WHERE CodApolice = @CodApolice;

    IF ISNULL(@Status, '') = ''
    BEGIN
        PRINT 'INEXISTENTE';
    END
    ELSE
    BEGIN
        PRINT @Status;
    END
END; 



----------- use o procedimento

EXEC sp_StatusApolice '202200001'; 



