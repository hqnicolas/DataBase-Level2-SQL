--SELECT cod_apolice
-- ,cod_cliente
-- ,data_inicio_vigencia
-- ,data_fim_vigencia
-- ,valor_cobertura
-- ,valor_franquia
-- ,placa
-- FROM apolice
-- ORDER BY data_fim_vigencia ASC
-- GO
-- 1.	Data a com consulta, altere o cod_cliente para informar o nome do cliente. Para isso, utilize subconsulta na lista de select.

SELECT cod_apolice
      ,(SELECT nome FROM cliente WHERE cliente.cod_cliente = apolice.cod_cliente) as nome
      ,data_inicio_vigencia
      ,data_fim_vigencia
      ,valor_cobertura
      ,valor_franquia
      ,placa
  FROM apolice
ORDER BY data_fim_vigencia ASC
GO
