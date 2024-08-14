--04.	(Aberta) Quais carros não possuem apólice? 
--opcao 1
select c.*
from carro c left join apolice a on c.placa = a.placa
where cod_apolice is null
go

--opcao 2
select *
from carro
where placa not in (select placa from apolice)
go

--opcao 2 com not exists select *
select *
from carro
where not exists (select *
                  from apolice
				  where carro.placa = apolice.placa)
go

--opcao 2 com not exists select 1
select *
from carro
where not exists (select 1
                  from apolice
				  where carro.placa = apolice.placa)
go

-------------------------------------------------------
SELECT cli.nome, ap.cod_apolice
FROM cliente AS cli
LEFT JOIN apolice AS ap ON cli.cod_cliente = ap.cod_cliente
WHERE ap.cod_cliente IS NULL;

SELECT * FROM cliente 
WHERE cod_cliente NOT IN (SELECT cod_cliente FROM apolice)