--08.	(Aberta) Quais clientes não possuem telefone fixo E telefone celular cadastrados?
select *
from cliente
where telefone_celular is null
  and telefone_fixo is null
;

--opcao 2
with cte as (
  select *
  from cliente
  where telefone_celular is null
),
cte2 as (
  select *
  from cte
  where telefone_fixo is null
)
select * from cte2
;