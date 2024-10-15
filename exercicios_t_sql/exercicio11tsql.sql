-- Crie uma stored procedure que receba como parâmetro de entrada o código do sinistro e a procedure deve
-- buscar a placa do carro que possui esse sinistro. A placa do carro deve ser retornada através de uma variável
-- de saída.
-- Caso não encontre o nome do cliente, informe a não existência do cliente por mensagem de PRINT.
-- Continuando a execução do código fora da stored procedure, crie um SELECT na tabela carro, mostrando
-- todos os dados do carro e passado como parâmetro WHERE a placa do carro que foi retornada pela
-- procedure (variável de saída).

CREATE OR ALTER PROC pr_consulta_placa_sinistro (@cod_sinistro int, @placa varchar(7) OUTPUT) AS
BEGIN
SELECT @placa = placa
FROM sinistro
WHERE cod_sinistro = @cod_sinistro
IF @placa is null
PRINT 'NAO EXISTE SINISTRO CADASTRADO PARA A PLACA INFORMADA'

--nao precisa da clausula ELSE porque o @nome ja foi populado
--pela consulta cima.
--Ex.:
--SE @nome for nulo
-- imprima mensagem de ausencia da placa
--SENAO
-- atualize @placa com a placa do carro (feito antes do IF)
END
GO
--execucao da stored procedure

DECLARE @placa_carro varchar(50)
EXEC pr_consulta_placa_sinistro 202255503, @placa_carro OUTPUT
IF @placa_carro is not null
SELECT * FROM carro WHERE placa = @placa_carro
GO
