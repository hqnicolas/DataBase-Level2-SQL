SELECT cli.nome, ap.cod_apolice
FROM cliente AS cli
LEFT JOIN apolice AS ap ON cli.cod_cliente = ap.cod_cliente
WHERE ap.cod_cliente IS NULL;