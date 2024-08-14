--03.	(Aberta) Quais clientes não possuem apólice? 
--opcao 1
select c.*
from cliente c left join apolice a
on c.cod_cliente = a.cod_cliente
where cod_apolice is null
go

--opcao 2
select *
from cliente
where cod_cliente not in (select cod_cliente
                          from apolice)
go

--opcao 3
select *
from cliente
where not exists (select 1
                  from apolice
				  where cliente.cod_cliente = apolice.cod_cliente)
go


------------------------------------------------------
SELECT cli.nome, ap.cod_apolice
FROM cliente AS cli
LEFT JOIN apolice AS ap ON cli.cod_cliente = ap.cod_cliente
WHERE ap.cod_cliente IS NULL;