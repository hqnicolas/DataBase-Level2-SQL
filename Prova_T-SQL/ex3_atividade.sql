--Encontre a(s) falha(s) no código abaixo e explique o que deveria ser feito para corrigir?



CREATE PROC pr_conta_sinistros (@placa varchar(10), @qtde int OUTPUT) AS
BEGIN
    select COUNT(*)
    from sinistro
    where placa = @placa
END
GO


--A resposta deve contemplar os 2 itens citados abaixo:
-- 1a parte, onde e qual é a falha no código.
-- 2a parte, explique onde e o que precisa ser feito para correção da falha.