
--02.	(Aberta) Quais clientes cadastrados possuem letra “a” no meio e não no final? 
--opcao 1
select *
from cliente
where nome like '%a%'
  and nome not like '%a'
go

--opcao 2 - independente se maisculo ou minusculo
select *
from cliente
where UPPER(nome) like '%A%'
  and UPPER(nome) not like '%A'
go


--opcao 3
with cte as (
  select * from cliente where nome like '%a%'
),
cte2 as (
  select * from cte where nome not like '%a'
)
select * from cte2
go

---------------------------------
SELECT cli.cod_cliente, cli.nome
FROM "cliente" AS cli
WHERE cli.nome LIKE '%a%' AND cli.nome NOT LIKE '%a %'