-- Questão:6
-- Construa uma consulta que liste todos os dados de sinistro, adicionando uma nova coluna chamada nr_seq ao final da lista de select, (não é para criar uma coluna com ALTER TABLE, usar somente SELECT), com um contador incremental de sinistros ordenado de forma ascendente por data e hora do sinistro.

-- NOTA 1: A resposta desta questão deverá ser o código completo da consulta.
-- NOTA 2: Utilize função de janela para resolver essa questão.

-- O resultado da consulta deve seguir este exemplo (não necessariamente os mesmos dados, mas sim a disposição e classificação das colunas):


SELECT *, ROW_NUMBER() OVER (ORDER BY data_sinistro, hora_sinistro) AS nr_seq
FROM sinistro;