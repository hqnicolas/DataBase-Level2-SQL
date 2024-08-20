--15.	(Aberta) Quantos municípios existem na região SUL?
SELECT nm_regiao, COUNT(*) as qtde
FROM municipio m INNER JOIN estado e1 ON m.cd_estado = e1.cd_estado
	 INNER JOIN regiao e2 ON e1.cd_regiao = e2.cd_regiao
WHERE nm_regiao = 'SUL'
GROUP BY nm_regiao