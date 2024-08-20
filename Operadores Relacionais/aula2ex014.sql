--14.	(Aberta) Quantos municípios existem por estado? Considere gerar uma lista com o nome do estado e a quantidade de municípios por cada estado.
SELECT nm_estado, count(*) as qtde_municipios
FROM municipio m inner join estado e ON m.cd_estado = e.cd_estado
GROUP BY nm_estado