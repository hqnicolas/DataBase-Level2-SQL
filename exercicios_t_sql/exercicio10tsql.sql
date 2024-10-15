-- . Crie uma stored procedure que receba como parâmetro de entrada o código da apólice e a procedure deve
-- buscar o nome do cliente que possui essa apólice. O nome do cliente deve ser retornado através de uma
-- variável de saída.
-- Caso não encontre o nome do cliente, informe a não existência do cliente por mensagem de PRINT.

CREATE OR ALTER PROC pr_lista_cliente_apolice (@cod_apolice int, @nome varchar(50) OUTPUT) AS
BEGIN
SELECT @nome = nome
FROM cliente INNER JOIN apolice ON cliente.cod_cliente = apolice.cod_cliente
WHERE cod_apolice = @cod_apolice
IF @nome is null
PRINT 'NAO EXISTE CLIENTE VINCULADO A APOLICE INFORMADA'
--nao precisa da clausula ELSE porque o @nome ja foi populado
--pela consulta cima.
--Ex.:
--SE @nome for nulo
-- imprima mensagem de ausencia do cliente
--SENAO
-- atualize @nome com o nome do cliente (feito antes do IF)
END
GO
--execucao da stored procedure
DECLARE @nome_cliente varchar(50)
EXEC pr_lista_cliente_apolice 202200014, @nome_cliente OUTPUT
IF @nome_cliente is not null
SELECT @nome_cliente
GO
