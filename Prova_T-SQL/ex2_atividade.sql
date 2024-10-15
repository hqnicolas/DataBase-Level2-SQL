--Crie uma store procedure que receba como parâmetro/variável de entrada a placa do carro
-- e retorne a quantidade de sinistros (referente a esta placa) através de uma parâmetro/variável de saída.
--Além do código de criação do procedimento armazenado, crie o código de execução do mesmo,
-- evidenciando através de um SELECT o valor da parâmetro/variável de saída.

CREATE PROCEDURE sp_QtdSinistrosPorPlaca 
    @Placa VARCHAR(8) ,
    @QtdSinistros INT OUTPUT
AS
BEGIN
    SELECT @QtdSinistros = COUNT(*)
    FROM Sinistros
    WHERE Placa = @Placa;
END;
GO

