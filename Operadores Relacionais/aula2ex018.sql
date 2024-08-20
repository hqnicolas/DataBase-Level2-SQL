--18.	(Aberta) Quantos municípios existem na região NORTE?
--1a opcao
SELECT nm_regiao, count(*) as qtde
FROM municipio m inner join estado e1 on m.cd_estado = e1.cd_estado
	 inner join regiao e2 on e1.cd_regiao = e2.cd_regiao
where nm_regiao = 'NORTE'
group by nm_regiao

--2a opcao - independente se munisculo ou maiusculo
SELECT nm_regiao, count(*) as qtde
FROM municipio m inner join estado e1 on m.cd_estado = e1.cd_estado
	 inner join regiao e2 on e1.cd_regiao = e2.cd_regiao
where UPPER(nm_regiao) = 'NORTE'
group by nm_regiao