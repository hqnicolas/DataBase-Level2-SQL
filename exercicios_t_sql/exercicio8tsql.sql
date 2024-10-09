-- Crie uma stored procedure que adicione um sinistro (inserir uma linha), passando todas as informações
-- necessárias para se cadastrar um sinistro, como parâmetros de entrada. Validar antes de cadastrar o
-- sinistro, se o carro existe. Caso exista, prosseguir com o INSERT. Caso não exista, informar via PRINT que o
-- carro não existe. 



CREATE OR ALTER PROCEDURE  RegistrarSinistro 
    @cod_sinistro INT,
    @placa VARCHAR(10),
    @data_sinistro DATE,
    @hora_sinistro TIME(7),
    @local_sinistro VARCHAR(100),
    @condutor VARCHAR(100)
AS
BEGIN
  -- Validar se o carro existe antes de registrar o sinistro
  DECLARE @existeCarro BIT = 0;
  SELECT @existeCarro = 1 
  FROM carro
  WHERE placa = @placa;

  IF @existeCarro = 0
  BEGIN
    PRINT 'Erro: O carro com a placa informado não existe.'
    RETURN;
  END

  -- Inserir o sinistro no banco de dados
  INSERT INTO sinistro (cod_sinistro, placa, data_sinistro, hora_sinistro, local_sinistro, condutor)
  VALUES (@cod_sinistro, @placa, @data_sinistro, @hora_sinistro, @local_sinistro, @condutor);

  PRINT 'Sinistro registrado com sucesso!';
END;   
GO

----------------------------- chame a procedure para cadastrar o sinistro

EXEC RegistrarSinistro @cod_sinistro = 123, @placa = 'ABC1234', 
                               @data_sinistro = '2023-10-26', 
                               @hora_sinistro = '15:30:00', 
                               @local_sinistro = 'Rua dos Carmosos, 123', 
                               @condutor = 'João Silva'; 
