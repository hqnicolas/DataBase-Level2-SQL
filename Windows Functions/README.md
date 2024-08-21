# Exercício de Linguagem SQL – Window Funtions + Junções, subconsultas (joins e subqueries) e CTE (Common Table Expression)

- Para responder os exercícios abaixo utilize o padrão de Linguagem do SGBD Microsoft SQL Server. Utilize o SSMS (SQL Server Management Studio) ou DBeaver para conexão ao banco de dados SQL Server. Você criar o banco de dados SQL no Azure e criar o ambiente através do arquivo script_sql.txt (anexo ao AVA).

- 1 Dada a consulta abaixo, altere o cod_cliente para informar o nome do cliente. Para isso, utilize subconsulta na lista de select.
```
SELECT cod_apolice
 ,cod_cliente
 ,data_inicio_vigencia
 ,data_fim_vigencia
 ,valor_cobertura
 ,valor_franquia
 ,placa
 FROM apolice
ORDER BY data_fim_vigencia ASC
GO
```
NOTA: Utilize o modelo abaixo para responder as questões de 1 à 8 e 11.

![image](https://github.com/user-attachments/assets/51a03f70-e4d3-4256-a45f-3a63c3e88067)


- 2 Dada a consulta abaixo, altere o cod_cliente para informar o nome do cliente. Para isso, utilize Join (escolha o tipo de JOIN mais adequado).
```
SELECT cod_apolice
 ,cod_cliente
 ,data_inicio_vigencia
 ,data_fim_vigencia
 ,valor_cobertura
 ,valor_franquia
 ,placa
 FROM apolice
ORDER BY data_fim_vigencia ASC
GO
```

- 3 Faça uma consulta na tabela sinistro (com todas as colunas) adicionando uma nova coluna chamada ordem ao final do select list, (não é para criar uma coluna com ALTER TABLE, usar somente SELECT), com um contador do número da linha, ORDENADO pelo campo local_sinistro. Nota: Utilize uma função de janela ROW_NUMBER.

- 4 Faça uma consulta na tabela sinistro (com todas as colunas) adicionando uma nova coluna chamada ordem ao final do select list, (não é para criar uma coluna com ALTER TABLE, usar somente SELECT), com um contador do número da linha, ORDENADO pelo campo local_sinistro. Nota: Utilize uma função de janela RANK.

- 5 Faça uma consulta na tabela sinistro (com todas as colunas) adicionando uma nova coluna chamada ordem ao final do select list, (não é para criar uma coluna com ALTER TABLE, usar somente SELECT), com um contador do número da linha, ORDENADO pelo campo local_sinistro. Nota: Utilize uma função de janela DENSE_RANK.

- 6 Faça uma consulta que mostre quais carros (listar todos os dados dos carros – todas as colunas da tabela carro) possuem mais de (1) um sinistro. Nota: O resultado da consulta deve mostrar todos os dados dos carros e mais uma coluna ao final com a quantidade de sinistros por cada carro.

- 7 Com base na consulta anterior, adicione uma coluna ao final do select list informando quando ocorreu o primeiro sinistro (menor data).

- 8 Altere a consulta anterior, adicionando uma outra coluna ao final do select list (preservar a coluna criada pela questão 7) informando quando ocorreu o último sinistro (menor data).

- 9 Gere uma consulta listando o nome da região e o nome dos estados vinculados a cada região (resultado com 2 colunas) ordenados pelo nome da região e pelo nome do estado respectivamente. Gerar duas opções de consulta. Uma com JOIN e a outra com subconsultas no select list.

NOTA: Utilize o modelo abaixo para responder as questões 9 e 10.

![image](https://github.com/user-attachments/assets/31b146e6-0f00-432e-8fe2-6a9e66f70a46)


- 10 Utilizando a consulta gerada na questão anterior, faça as alterações necessárias na consulta para informar o nome do estado que está na 5a posição do ranking.

- 11 Desafio: Gere uma consulta na tabela apolice (listas todas as colunas), alterando a coluna cod_cliente informando o nome do cliente (usar uma subconsulta no select list para isso). Utilizando essa consulta como base, faça as alterações necessárias para adicionar uma nova coluna ao final do select list com o valor acumulado da coluna valor_franquia, particionado por nome do cliente, e ordenado pelo nome do cliente e pelo código da apólice respectivamente.
