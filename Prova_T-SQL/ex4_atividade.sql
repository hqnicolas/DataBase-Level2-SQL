DECLARE @cor int
SET @cor = 'AZUL'

UPDATE carro
    SET modelo = 'ECO SPORT'
WHERE chassi IS NOT NULL
    AND ano >= 2020 AND ano <= 2022
    AND cor == @cor

PRINT 'o número de linhas atualizadas é : ' + CONVERT(varchar(100), @@ROWCOUNT)


-- Conforme a imagem acima, marque as afirmações VERDADEIRAS em relação ao que precisa ser CORRIGIDO 
-- de acordo com a sua análise do código.


-- e) DECLARE @cor int, pois o tipo de dado correto deveria ser alfanumérico tipo varchar.
