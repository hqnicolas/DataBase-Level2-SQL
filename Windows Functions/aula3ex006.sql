--6.	Faça uma consulta que mostre quais carros (listar todos os dados dos carros – todas as colunas da tabela carro) possuem mais de (1) um sinistro. Nota: O resultado da consulta deve mostrar todos os dados dos carros e mais uma coluna ao final com a quantidade de sinistros por cada carro.
--1a opcao
with cte as (
  select DISTINCT c.[placa]
      ,c.[modelo]
      ,c.[chassi]
      ,c.[marca]
      ,c.[ano]
      ,c.[cor]
       ,COUNT(s.placa) over (partition by c.placa order by c.placa)  as qtde_sinistro
  from carro c inner join sinistro s ON c.placa = s.placa
)
select * from cte where qtde_sinistro > 1

--2a opcao
select c.placa, modelo, chassi, marca, ano, cor, count(1) as qtde
from carro c inner join sinistro s ON c.placa = s.placa
group by c.placa, modelo, chassi, marca, ano, cor
having count(1) > 1
go

