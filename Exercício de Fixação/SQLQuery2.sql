-- Com base no diagrama abaixo, faça um comando SELECT 
-- que traga o nome de TODOS os cursos e a quantidade de 
-- alunos cadastrados em cada curso, ordenados de forma
-- decrescente pela quantidade de alunos.
SELECT c.nm_curso, COUNT(a.cd_aluno) as qtde_alunos
FROM curso c 
JOIN alunos a ON c.cd_curso = c.cd_curso
GROUP BY c.nm_curso
ORDER BY qtde_alunos DESC;