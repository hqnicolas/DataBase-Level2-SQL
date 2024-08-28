-- Resolva o problema do operador Key Lookup encontrado na consulta abaixo:
-- SELECT NO_MUNICIPIO_ESC, TP_ESCOLA
-- FROM MICRODADOS_ENEM_2021_SC WHERE NO_MUNICIPIO_ESC = 'Treviso'

Uma forma de resolver esse problema é criar um índice não clusterizado na coluna NO_MUNICIPIO_ESC,
 como já foi feito. Isso permitirá que o SQL Server use o índice para encontrar rapidamente os
  locais das linhas com base no valor de NO_MUNICIPIO_ESC e, em seguida, 
  recuperar as informações dessas linhas diretamente da tabela.