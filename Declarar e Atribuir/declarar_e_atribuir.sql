--Declarar e atribuir as variáveis
DECLARE @numrows INT = 3, @catid INT = 2;
--Usar Variáveis para transmitir os parametros para o procedimento.
EXEC Production.ProdsByCategory @numrows = @numrows, @catid = @catid;
GO
