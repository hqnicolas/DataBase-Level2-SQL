-- Questão:8
-- Faça uma consulta na tabela apolice (listar todas as colunas), trocando a coluna cod_cliente pelo nome do cliente (usar uma subconsulta no select list para isso).
-- Depois, adicione uma nova coluna ao final do select list com o valor acumulado da coluna valor_franquia, particionado por nome do cliente (ASC), e ordenado pelo nome do cliente (ASC) e pelo código da apólice (ASC) respectivamente.
-- DICA: Utilize CTE para poder usar o nome do cliente dentro da função de janela.

WITH NomeCliente AS (
    SELECT cod_cliente, nome FROM Cliente
)
SELECT a.codapolice,
       nc.nome, 
       a.data_inicio_vigencia, 
       a.data_fm_vigencia, 
       a.valor_cobertura, 
       a.valor_franquia, 
       a.placa, 
       SUM(a.valor_franquia) OVER (PARTITION BY nc.nome ORDER BY nc.nome ASC, a.codapolice ASC) as Acumulado_Valor_Franquia
FROM Apolice a
INNER JOIN NomeCliente nc ON a.cod_cliente = nc.cod_cliente;
