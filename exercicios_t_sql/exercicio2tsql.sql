-- 2. Crie uma stored procedure que calcule a média de 4 valores inteiros passados como parâmetro de entrada.
-- O resultado deve ser um valor numérico (tipo numeric) com somente 2 casas após a vírgula.


CREATE PROCEDURE pr_calcular_media (@var1 INT, @var2 INT, @var3 INT, @var4 INT)
AS
BEGIN
    DECLARE @media NUMERIC(10, 2);

    SET @media =  ((@var1 + @var2 + @var3 + @var4) / 4.0); 

    SELECT @media;
END;



-- Execute o procedimento:
EXEC pr_calcular_media 10, 20, 30, 40;

-----------------------------------------------------------------------------------------------------------------


CREATE OR ALTER PROCEDURE pr_calcular_medias (@var1 INT, @var2 INT, @var3 INT, @var4 INT)
AS
BEGIN
    DECLARE @media NUMERIC(10, 2);

    SET @media = ((@var1 + @var2 + @var3 + @var4) / 4.0); 

    SELECT @media AS "Média";
END;


----- faça o uso da procedure:
EXEC pr_calcular_medias @var1 = 10, @var2 = 20, @var3 = 30, @var4 = 40;