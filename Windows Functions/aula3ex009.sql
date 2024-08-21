--9.	Gere uma consulta listando o nome da região e o nome dos estados vinculados a cada região (resultado com 2 colunas) ordenados pelo nome da região e pelo nome do estado respectivamente. Gerar duas opções de consulta. Uma com JOIN e a outra com subconsultas no select list.
--1a opcao
SELECT nm_regiao, nm_estado
FROM regiao inner join estado on regiao.cd_regiao = estado.cd_regiao
ORDER BY nm_regiao, nm_estado
go

--2a opcao
SELECT (SELECT nm_regiao from regiao where estado.cd_regiao = regiao.cd_regiao) as nm_regiao
       ,nm_estado
FROM estado
WHERE estado.cd_regiao is not null
ORDER BY nm_regiao, nm_estado
go
