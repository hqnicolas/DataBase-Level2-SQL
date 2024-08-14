--06.	(Aberta) Quais carros possuem a placa iniciando com as letras L ou M
--1a opcao
select *
from carro
where placa like 'l%' or placa like 'm%';

--2a opcao - independente se minusculo ou maiusculo
select *
from carro
where lower(placa) like 'l%' or lower(placa) like 'm%';