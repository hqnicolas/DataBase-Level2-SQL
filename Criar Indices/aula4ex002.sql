-- Com base no plano de execução gerado pela questão anterior, qual o operador encontrado com o maior
-- valor percentual gerado e descreva o que deverá ser feito para resolver o problema encontrado.

Pelo plano de execução gerado pela questão anterior,
a consulta principalmente consumindo recursos é SELECT * FROM MICRODADOS_ENEM_2021_SC 
com o operador Clustered Index Scan e um valor percentual muito alto (mais de 95%).
O Clustered Index Scan acontece quando uma consulta precisa acessar os dados armazenados na tabela, 
mas não consegue fazer isso diretamente pelo índice clusterizado da tabela.
Isso ocorre porque os dados da tabela estão desorganizados e o operador precisa buscar um bloco
de registros no disco para obter os dados que ele necessita.
Para resolver esse problema, podemos tentar reduzir a quantidade de colunas retornadas na consulta
 ou criar índices não clusterizados nas outras colunas que você está consultando.
 É importante lembrar que o operador Clustered Index Scan é geralmente um sinal
 de uma tabela mal-projetada e pode indicar a necessidade de reestruturação 
 dos dados ou da chave primária da tabela.