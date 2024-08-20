--Construa uma consulta que informe quais carros possuem apólice vigente.
--Considere mostrar todos os dados dos carros (todas as colunas da tabela carro) na sua consulta.
--NOTA 1: A sua consulta deverá ser construída através de subconsultas (alinhada ou correlacionada ou ambas). JOIN não será aceito como resposta válida.
--NOTA 2: A resposta desta questão deverá ser o código completo da consulta.
--NOTA 3: Considere apólices vigentes como aquelas que tem a data de fim da vigência superior a data atual.
--NOTA 4: Você pode utilizar a função getdate() para buscar a data atual.

SELECT *
    FROM apolice



SELECT * FROM carro
WHERE carro.placa IN (
    SELECT apolice.placa
    FROM apolice
	WHERE apolice.data_fim_vigencia > CONVERT (date, GETDATE())
);