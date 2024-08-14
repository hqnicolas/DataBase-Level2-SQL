--10.	(Aberta) Quais carros possuem algum sinistro com data superior a data de fim da vigência da apólice?
--1a opcao
select distinct c.*
from carro c inner join sinistro s on s.placa = c.placa
     inner join apolice a on a.placa = c.placa
where a.data_fim_vigencia < s.data_sinistro;

--2a opcao
select *
from carro
where placa IN (select placa
                from sinistro
				where placa IN (select placa
				                from apolice
								where apolice.data_fim_vigencia < sinistro.data_sinistro))

--3a opcao
select *
from carro
where exists (select 1
                from sinistro
				where carro.placa = sinistro.placa
				  and placa IN (select placa
				                from apolice
								where apolice.data_fim_vigencia < sinistro.data_sinistro))