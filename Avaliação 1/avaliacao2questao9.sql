
-- Questão:9
-- Crie uma CHAVE PRIMARIA para a tabela MICRODADOS_ENEM_2022_SC chamado pk_MICRODADOS_ENEM_2022_SC usando a coluna NU_INSCRICAO como chave.
-- Resolva todos os impedimentos que você encontrar para criação da chave na tabela e coluna citados.

-- A sua resposta deverá conter todos os comandos utilizados, em ordem cronológica para criação da PK.

ALTER TABLE MICRODADOS_ENEM_2022_SC ADD CONSTRAINT pk_MICRODADOS_ENEM_2022_SC PRIMARY KEY (NU_INSCRICAO);