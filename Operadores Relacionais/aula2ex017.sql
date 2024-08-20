--17.	(Aberta) Quantos municípios possuem mais de 10 letras no nome?
SELECT COUNT(*) as qtde
FROM municipio
where LEN(nm_municipio) > 10