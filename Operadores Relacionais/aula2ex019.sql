--19.	(Aberta) Quais as regiões que começam com a letra S e quantos municípios existem em cada uma delas?
--1a opcao
SELECT nm_regiao, count(*) as qtde
FROM municipio m inner join estado e1 on m.cd_estado = e1.cd_estado
	 inner join regiao e2 on e1.cd_regiao = e2.cd_regiao
where nm_regiao like 'S%'
group by nm_regiao

--2a opcao
SELECT nm_regiao, count(*) as qtde
FROM municipio m inner join estado e1 on m.cd_estado = e1.cd_estado
	 inner join regiao e2 on e1.cd_regiao = e2.cd_regiao
where SUBSTRING(nm_regiao, 1, 1) = 'S'
group by nm_regiao