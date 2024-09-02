-- Questão:4
-- Dada a consulta abaixo, o que é possível fazer para eliminar o problema de Key Lookup (considere todas as alternativas possíveis):

SELECT NO_MUNICIPIO_ESC, TP_ESCOLA
FROM MICRODADOS_ENEM_2022_SC
WHERE NO_MUNICIPIO_ESC = 'Treviso'

-- Para responder essa pergunta, considere o seguinte cenário:

-- A tabela MICRODADOS_ENEM_2022_SC possui índice clustered pk_MICRODADOS_ENEM_2022_SC criado com a chave NU_INSCRICAO.
-- A tabela MICRODADOS_ENEM_2022_SC possui índice nonclustered idx1 criado com a chave NO_MUNICIPIO_ESC.
-- a) Criar um novo índice nonclustered chamado idx2 com a chave NO_MUNICIPIO_ESC e com a clausula include na coluna TP_ESCOLA.

b) Dropar o índice nonclustered idx1 e recriá-lo com a chave NO_MUNICIPIO_ESC  e com a clausula include na coluna TP_ESCOLA.

-- c) Não existe problema de Key Lookup na consulta.

-- d) Criar um novo índice clustered chamado pk_MICRODADOS_ENEM_2022_SC_2 com a clausula INCLUDE na coluna TP_ESCOLA.

-- e) Dropar o índice clustered pk_MICRODADOS_ENEM_2022_SC e recriá-lo com a clausula INCLUDE na coluna TP_ESCOLA.
