--  Crie um índice clustered para a tabela MICRODADOS_ENEM_2021_SC chamado
-- pk_MICRODADOS_ENEM_2021_SC passando o campo NU_INSCRICAO como chave. Evidencie a criação
-- deste índice através do sp_helpindex).
-- OBS: Resolva os possíveis impedimentos para criação do índice cluster e informe quais foram, caso existam.

CREATE CLUSTERED INDEX pk_MICRODADOS_ENEM_2021_SC ON MICRODADOS_ENEM_2021_SC(NU_INSCRICAO)

exec sp_helpindex MICRODADOS_ENEM_2021_SC


--4.
alter table MICRODADOS_ENEM_2021_SC alter column NU_INSCRICAO bigint NOT NULL;
go

alter table MICRODADOS_ENEM_2021_SC add constraint pk_MICRODADOS_ENEM_2021_SC primary key (NU_INSCRICAO);
go
