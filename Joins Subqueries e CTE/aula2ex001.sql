SELECT cli.cod_cliente, cli.nome
FROM "cliente" AS cli
WHERE cli.nome LIKE '%a%' AND cli.nome NOT LIKE '%a %'