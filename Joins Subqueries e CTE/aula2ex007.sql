--07.	(Aberta) Quais sinistros ocorreram em 2022?
--1a opcao
select *
from sinistro
where data_sinistro BETWEEN '2022-01-01' and '2022-12-31'

--2a opcao
select *
from sinistro
where year(data_sinistro) = 2022
