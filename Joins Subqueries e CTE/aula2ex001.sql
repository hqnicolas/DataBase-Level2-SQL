--01.	(Aberta) Utilizando a linguagem SQL, execute consultas que possam responder a seguinte questão: Qual(is) Carro(s) possui(em) mais sinistros cadastrados?

--1a opcao
with cte1 as (
	select placa, count(1) as qtde
	from sinistro
	group by placa
)
select * from carro
where placa in (select placa
                from cte1
				where qtde in (select MAX(qtde)
				               from cte1))
go

--2a opcao
with cte1 as (
	select placa, count(1) as qtde from sinistro group by placa
)
select *
from carro A inner join cte1 B
ON A.placa = B.placa
where qtde in (select max(qtde)
				from cte1)
go

--3a opcao
with cte as (
	select c.placa, modelo, chassi, marca, ano, cor, count(1) as qtde
	from carro c inner join sinistro s ON c.placa = s.placa
	group by c.placa, modelo, chassi, marca, ano, cor
)
select *
from cte A
where qtde in (select max(qtde)
               from cte B)
go
