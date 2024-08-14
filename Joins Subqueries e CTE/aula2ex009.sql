--09.	(Aberta) Quantos clientes possuem apólice(s) vencida(s)? Utiliza data e hora atual como base.
--1a opcao 
select distinct c.*
from apolice a inner join cliente c on a.cod_cliente = c.cod_cliente
where data_fim_vigencia < GETDATE();

--2a opcao
select distinct *
from cliente
where cod_cliente in (select cod_cliente
                      from apolice
                      where data_fim_vigencia < GETDATE())
;

--3a opcao
select distinct *
from cliente
where exists (select 1
                      from apolice
                      where 
					    cliente.cod_cliente = apolice.cod_cliente
						and data_fim_vigencia < GETDATE())
;
