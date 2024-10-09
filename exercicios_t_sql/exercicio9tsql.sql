-- Crie uma stored procedure que gere uma lista com os TOP “N” cursos com mais alunos. O “N” deverá ser
-- passado como parâmetro da stored procedure, que deverá mostrar o resultado filtrado pelo ranking
-- informado no N.
-- Exemplo: Se N = 1, mostrar somente o curso (ou mais de um curso em caso de empate) mais alto do
-- ranking. Se N = 3, mostrar os 3 cursos com mais alunos cadastrados.
-- A lista da stored procedures deverá ter as seguintes colunas:
-- Nome do curso, ranking, qt_aluno


CREATE PROCEDURE sp_TopCursosPorAluno (
    @N INT
)
AS
BEGIN
    WITH CursoAlunoRank AS (
        SELECT 
            c.nm_curso,
            ROW_NUMBER() OVER (ORDER BY COUNT(a.cd_aluno) DESC) AS Ranking,
            COUNT(a.cd_aluno) AS QtdeAlunos
        FROM curso c
        LEFT JOIN aluno a ON c.cd_curso = a.cd_curso
        GROUP BY c.nm_curso
    )
    SELECT 
        nm_curso,
        Ranking,
        QtdeAlunos
    FROM CursoAlunoRank
    WHERE Ranking <= @N
ORDER BY Ranking ASC;
END;



------------------------ execute o procedimento

EXEC sp_TopCursosPorAluno @N = 3; -- Mostrar os 3 cursos com mais alunos
