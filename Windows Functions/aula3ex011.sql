
--11.	Desafio: Gere uma consulta na tabela apolice (listas todas as colunas), alterando a coluna cod_cliente Informando o nome do cliente (usar uma subconsulta no select list para isso).
--Utilizando essa consulta como base, faça as alterações necessárias para adicionar uma nova coluna ao final do select list com o valor acumulado da coluna valor_franquia, participado por cliente, e ordenado pelo nome do cliente e pelo código da apólice respectivamente.

--1a opcao - subconsulta inteira dentro do OVER da WINDOW FUNCTION
SELECT cod_apolice
      ,(SELECT nome FROM cliente WHERE cliente.cod_cliente = apolice.cod_cliente) as nome
      ,data_inicio_vigencia
      ,data_fim_vigencia
      ,valor_cobertura
      ,valor_franquia
      ,placa
	  ,SUM(valor_franquia) OVER (
		PARTITION BY (SELECT nome FROM cliente WHERE cliente.cod_cliente = apolice.cod_cliente)
		ORDER BY (SELECT nome FROM cliente WHERE cliente.cod_cliente = apolice.cod_cliente), cod_apolice) as valor_acumulado
  FROM apolice
GO

--2a opcao
with cte as (
  SELECT cod_apolice
      ,(SELECT nome FROM cliente WHERE cliente.cod_cliente = apolice.cod_cliente) as nome
      ,data_inicio_vigencia
      ,data_fim_vigencia
      ,valor_cobertura
      ,valor_franquia
      ,placa
  FROM apolice
)
select *
       ,SUM(valor_franquia) OVER (PARTITION BY nome ORDER BY nome, cod_apolice) as valor_acumulado
from cte


