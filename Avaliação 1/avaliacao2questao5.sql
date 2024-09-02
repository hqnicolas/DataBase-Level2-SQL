-- Questão:5
-- Construa uma consulta que informe quais carros possuem apólice não vigente, ou seja, apolice vencida. Considere mostrar todos os dados dos carros (todas as colunas da tabela carro) na sua consulta.

-- NOTA 1: A sua consulta deverá ser construída através de subconsultas (alinhada ou correlacionada ou ambas). JOIN não será aceito como resposta válida.
-- NOTA 2: A resposta desta questão deverá ser o código completo da consulta.
-- NOTA 3: Considere apólices não vigentes como aquelas que tem a data de fim da vigência inferior a data atual.
-- NOTA 4: Você pode utilizar a função getdate() para ter acesso a data atual.

SELECT c.* 
FROM carro c 
WHERE c.placa IN (
    SELECT a.placa 
    FROM apolice a 
    WHERE a.data_fm_vigencia < GETDATE() 
);