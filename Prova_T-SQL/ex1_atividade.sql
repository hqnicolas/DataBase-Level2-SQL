-- Responda qual é a finalidade desta stored procedure (considerar somente uma correta - a mais completa).

CREATE PROCEDURE pr_xyz (@d DATETIME, @r INT OUTPUT) AS
BEGIN
    SELECT @r = DATEPART (YY, @d)
END
GO


-- d) Informar o ano, através da variável @r, com base na variável @d.

