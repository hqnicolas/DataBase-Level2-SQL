-- Crie uma stored procedure que adicione (INSERT) um carro, passando todas as informações necessárias para
-- se cadastrar um carro como parâmetros de entrada. Depois de inserir o carro, a stored procedure deve listar
-- (SELECT) todos os carros.

CREATE PROCEDURE sp_cadastrar_carro 
    @placa VARCHAR(10),
    @modelo VARCHAR(50),
    @chassi VARCHAR(30),
    @marca VARCHAR(30),
    @ano INT,
    @cor VARCHAR(10)
AS
BEGIN
    -- Inserir o novo carro
    INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) 
    VALUES (@placa, @modelo, @chassi, @marca, @ano, @cor);

    -- Listar todos os carros após a inserção
    SELECT * FROM carro;
END;


---------------------------------------- Execute o procedimento

EXEC sp_cadastrar_carro 
    @placa = 'ABC1234', 
    @modelo = 'Fusca',
    @chassi = '1234567890',
    @marca = 'Volkswagen',
    @ano = 2020,
    @cor = 'Azul';

----------------------------------- execute o procedimento

EXEC sp_cadastrar_carro     'ABC1234','Fusca', '1234567890','Volkswagen', 2020, 'Azul';
