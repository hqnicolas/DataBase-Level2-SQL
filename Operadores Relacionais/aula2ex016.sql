--16.	(Aberta) Quantos municípios existem na região SUL e que começam com a letra C?
--1a opcao
SELECT nm_regiao, count(*) as qtde
FROM municipio m inner join estado e1 on m.cd_estado = e1.cd_estado
	 inner join regiao e2 on e1.cd_regiao = e2.cd_regiao
where nm_regiao = 'SUL'
  and nm_municipio like 'c%'
group by nm_regiao

--2a opcao
SELECT nm_regiao, count(*) as qtde
FROM municipio m inner join estado e1 on m.cd_estado = e1.cd_estado
	 inner join regiao e2 on e1.cd_regiao = e2.cd_regiao
where nm_regiao = 'SUL'
  and substring(nm_municipio, 1, 1) = 'c'
group by nm_regiao

--3a opcao - independente se munisculo ou maiusculo
SELECT nm_regiao, count(*) as qtde
FROM municipio m inner join estado e1 on m.cd_estado = e1.cd_estado
	 inner join regiao e2 on e1.cd_regiao = e2.cd_regiao
where UPPER(nm_regiao) = 'SUL'
  and UPPER(substring(nm_municipio, 1, 1)) = 'C'
group by nm_regiao