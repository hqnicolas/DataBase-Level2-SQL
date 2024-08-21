--7.	Com base na consulta anterior, adicione uma coluna ao final do select list informando quando ocorreu o primeiro sinistro (menor data).
--1a opcao
with cte as (
  select DISTINCT c.placa
      ,c.modelo
      ,c.chassi
      ,c.marca
      ,c.ano
      ,c.cor
      ,COUNT(s.placa) over (partition by c.placa order by c.placa)  as qtde_sinistro
      ,FIRST_VALUE(data_sinistro) OVER(PARTITION BY c.placa ORDER BY data_sinistro) as primeiro_sinistro
  from carro c inner join sinistro s ON c.placa = s.placa
)
select * from cte where qtde_sinistro > 1;
go

--2a opcao
with cte as (
  select c.placa, modelo, chassi, marca, ano, cor, count(1) as qtde
  from carro c inner join sinistro s ON c.placa = s.placa
  group by c.placa, modelo, chassi, marca, ano, cor
  having count(1) > 1
)
select distinct cte.placa, modelo, chassi, marca, ano, cor, qtde
      ,FIRST_VALUE(data_sinistro) OVER(PARTITION BY cte.placa ORDER BY data_sinistro) as primeiro_sinistro
FROM cte INNER JOIN sinistro ON cte.placa = sinistro.placa
go

