-- Crie uma stored procedure que receba a placa de um carro como parâmetro de entrada e valide se tem
-- algum sinistro vinculado a essa placa. Caso tenha um (ou mais de um) sinistro, mostre em uma lista: a placa
-- do carro, a data do sinistro, a hora do sinistro e o nome do condutor.
-- No caso de não ter nenhum sinistro para a placa informada, mostre uma mensagem via PRINT que não
-- existem sinistros atrelados a placa informada.


CREATE OR ALTER PROCEDURE sp_consultar_sinistros_por_placa 
    @placa VARCHAR(10)
AS
BEGIN
    DECLARE @totalSinistros INT;

    SELECT @totalSinistros = COUNT(*)
    FROM carro c
    JOIN sinistro s ON c.placa = s.placa
    WHERE c.placa = @placa;

    IF @totalSinistros = 0
        PRINT 'Não existem sinistros atrelados à placa informada.';
    ELSE
        BEGIN
            SELECT c.placa, s.data_sinistro, s.hora_sinistro, s.condutor
            FROM carro c
            JOIN sinistro s ON c.placa = s.placa
            WHERE c.placa = @placa;
        END; 
END;



------------ execute o procedimento
SELECT c.placa
    FROM carro c

EXEC sp_consultar_sinistros_por_placa @placa = 'EEE1056';  -- sem sinistro

EXEC sp_consultar_sinistros_por_placa @placa = 'ALD3834'; -- com sinistro
