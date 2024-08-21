-- SELECT cod_apolice
--  ,cod_cliente
--  ,data_inicio_vigencia
--  ,data_fim_vigencia
--  ,valor_cobertura
--  ,valor_franquia
--  ,placa
--  FROM apolice
-- ORDER BY data_fim_vigencia ASC
-- GO
-- 2. Dada a consulta abaixo, altere o cod_cliente para informar o nome do cliente. Para isso, utilize Join (escolha
-- o tipo de JOIN mais adequado).
SELECT cod_apolice
      ,nome
      ,data_inicio_vigencia
      ,data_fim_vigencia
      ,valor_cobertura
      ,valor_franquia
      ,placa
  FROM apolice INNER JOIN cliente ON apolice.cod_cliente = cliente.cod_cliente
ORDER BY data_fim_vigencia ASC
GO
