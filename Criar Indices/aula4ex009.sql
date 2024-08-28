-- Crie um índice nonclustered chamado idx_NO_MUNICIPIO_ESC na tabela MICRODADOS_ENEM_2021_SC
-- usando o campo NO_MUNICIPIO_ESC como chave do índice.
-- Evidencie a criação deste índice através do sp_helpindex).

CREATE NONCLUSTERED INDEX idx_NO_MUNICIPIO_ESC ON MICRODADOS_ENEM_2021_SC(NO_MUNICIPIO_ESC)

exec sp_helpindex MICRODADOS_ENEM_2021_SC
