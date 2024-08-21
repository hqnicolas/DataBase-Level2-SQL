--10.	Utilizando a consulta gerada na questão anterior, faça as alterações necessárias na consulta para informar o nome do estado que está na 5a posição do ranking.
--1a opcao
with cte as (
  SELECT nm_regiao, nm_estado, ROW_NUMBER() OVER (ORDER BY nm_regiao, nm_estado) as posicao
  FROM regiao inner join estado on regiao.cd_regiao = estado.cd_regiao
)
select * from cte where posicao = 5
go

--2a opcao
with cte as (
  SELECT (SELECT nm_regiao from regiao where estado.cd_regiao = regiao.cd_regiao) as nm_regiao
         ,nm_estado
  FROM estado
  WHERE estado.cd_regiao is not null
),
cte1 as (
  select * ,ROW_NUMBER() OVER (ORDER BY nm_regiao, nm_estado) as posicao
  from cte
)
select * from cte1 where posicao = 5
go

--3a opcao
with cte as (
  SELECT nm_regiao, nm_estado, RANK() OVER (ORDER BY nm_regiao, nm_estado) as posicao
  FROM regiao inner join estado on regiao.cd_regiao = estado.cd_regiao
)
select * from cte where posicao = 5
go

--4a opcao
with cte as (
  SELECT (SELECT nm_regiao from regiao where estado.cd_regiao = regiao.cd_regiao) as nm_regiao
         ,nm_estado
  FROM estado
  WHERE estado.cd_regiao is not null
),
cte1 as (
  select * ,RANK() OVER (ORDER BY nm_regiao, nm_estado) as posicao
  from cte
)
select * from cte1 where posicao = 5
go


