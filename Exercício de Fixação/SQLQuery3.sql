--Construa uma consulta que informe quais carros possuem ap�lice vigente.
--Considere mostrar todos os dados dos carros (todas as colunas da tabela carro) na sua consulta.
--NOTA 1: A sua consulta dever� ser constru�da atrav�s de subconsultas (alinhada ou correlacionada ou ambas). JOIN n�o ser� aceito como resposta v�lida.
--NOTA 2: A resposta desta quest�o dever� ser o c�digo completo da consulta.
--NOTA 3: Considere ap�lices vigentes como aquelas que tem a data de fim da vig�ncia superior a data atual.
--NOTA 4: Voc� pode utilizar a fun��o getdate() para buscar a data atual.

SELECT *
    FROM apolice



SELECT * FROM carro
WHERE carro.placa IN (
    SELECT apolice.placa
    FROM apolice
	WHERE apolice.data_fim_vigencia > CONVERT (date, GETDATE())
);