-- Questão:3
-- Dada a consulta abaixo, o que é possível fazer para tornar a consulta mais otimizada possível (considere apenas a melhor resposta - mais completa):

SELECT NO_MUNICIPIO_ESC
FROM MICRODADOS_ENEM_2022_SC
WHERE NO_MUNICIPIO_ESC = 'Criciúma'

-- Para responder essa pergunta, considere o seguinte cenário:

-- A tabela MICRODADOS_ENEM_2022_SC possui índice clustered pk_MICRODADOS_ENEM_2022_SC criado com a chave NU_INSCRICAO.
-- A tabela MICRODADOS_ENEM_2022_SC possui índice nonclustered idx1 criado com a chave NO_MUNICIPIO_ESC.
-- a) Criar um novo índice nonclustered chamado idx2 com a clausula include na coluna NO_MUNICIPIO_ESC.

-- b) Dropar o índice nonclustered idx1 e deixar somente o índice clustered.

c) A consulta já está a mais otimizada possível.

-- d) Criar um novo índice clustered chamado pk_MICRODADOS_ENEM_2022_SC_2 com a chave NO_MUNICIPIO_ESC para ser mais rápido.

-- e) Dropar o índice clustered pk_MICRODADOS_ENEM_2022_SC e recriá-lo com a chave NO_MUNICIPIO_ESC.