-- Questão:7
-- 1a parte
-- Crie uma consulta que liste o nome de todos os estados e a quantidade de municipios vinculados as estes estados.
-- Utilizar JOIN.

    SELECT e.nm_estado, COUNT(m.cd_municipio) AS qtd_municipios,
        ROW_NUMBER() OVER (ORDER BY COUNT(m.cd_municipio) DESC) AS ranking
    FROM estado e
    JOIN municipio m ON e.cd_estado = m.cd_estado
    GROUP BY e.nm_estado

-- 2a parte
-- Após isso, adicione na sua consulta, uma coluna de ranking de classificação, ordenador pela quantidade de municipios do maior para o menor (descendente), sem pular a sequencia da contagem considerando, para os casos de empate o mesmo número de posição.
-- A numeração do ranking deve respeitar um sequencial numério (sem saltos).

-- O resultado desta consulta deverá ser ordenado de forma descendente pela coluna de quantidade de municipios vinculados a cada estado.

-- REGRA IMPORTANTE: A 1a parte da consulta deverá estar dentro de uma CTE e a 2a parte deve ser um SELECT na CTE que você criou.
-- A resposta deverá ser o comando completo (parte 1 + parte 2).


-- Caso a resposta não esteja dentro da regra acima citada, não será considerada correta.

-- IMPORTANTE: O resultado final de sua consulta deverá ter apenas 3 colunas na lista de select (nome do estado, quantidade de municipio e ranking).


WITH ranqueada AS (
    SELECT e.nm_estado, COUNT(m.cd_municipio) AS qtd_municipios,
        ROW_NUMBER() OVER (ORDER BY COUNT(m.cd_municipio) DESC) AS ranking
    FROM estado e
    JOIN municipio m ON e.cd_estado = m.cd_estado
    GROUP BY e.nm_estado
)
SELECT e.nm_estado, e.qtd_municipios, e.ranking
FROM ranqueada
ORDER BY e.ranking;