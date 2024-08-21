--5.	Faça uma consulta na tabela sinistro (com todas as colunas) adicionando uma nova chamada ordem ao final do select list, (não é para criar uma coluna com ALTER TABLE, usar somente SELECT), com um contador do número da linha, ORDENADO pelo campo local_sinistro. Nota: Utilize uma função de janela DENSE_RANK.
select *
      ,DENSE_RANK() OVER(ORDER BY local_sinistro) as ordem
from sinistro;
go
