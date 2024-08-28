
--alter table MICRODADOS_ENEM_2021_SC drop constraint pk_MICRODADOS_ENEM_2021_SC

sp_helpindex MICRODADOS_ENEM_2021_SC

set statistics io on
select * from MICRODADOS_ENEM_2021_SC


--consulta pela chave
select NU_INSCRICAO, TP_ESCOLA, * from MICRODADOS_ENEM_2021_SC
where NU_INSCRICAO = 210052759402

--clustered - chave NU_INSCRICAO
alter table MICRODADOS_ENEM_2021_SC
  add constraint pk_MICRODADOS_ENEM_2021_SC primary key (NU_INSCRICAO)
 
--CONSULTA SEM chave - Vai varrer o indice clustered
select NO_MUNICIPIO_PROVA from MICRODADOS_ENEM_2021_SC where NO_MUNICIPIO_ESC = 'IÃ§ara'

--nonclustered
create index idx1 on MICRODADOS_ENEM_2021_SC (NO_MUNICIPIO_ESC)

--CONSULTA Pela chave - NO_MUNICIPIO_ESC
select NO_MUNICIPIO_ESC from MICRODADOS_ENEM_2021_SC where NO_MUNICIPIO_ESC = 'IÃ§ara'

select NO_MUNICIPIO_ESC, TP_ESCOLA from MICRODADOS_ENEM_2021_SC where NO_MUNICIPIO_ESC = 'IÃ§ara'


--Usando outra cidade menos seletiva
select NO_MUNICIPIO_ESC, TP_ESCOLA from MICRODADOS_ENEM_2021_SC where NO_MUNICIPIO_ESC = 'IÃ§ara'

select NO_MUNICIPIO_ESC, TP_ESCOLA from MICRODADOS_ENEM_2021_SC where NO_MUNICIPIO_ESC = 'CriciÃºma'


--CONSULTA Pela chave - NO_MUNICIPIO_ESC
select NO_MUNICIPIO_ESC from MICRODADOS_ENEM_2021_SC where NO_MUNICIPIO_ESC = 'IÃ§ara'

--CONSULTA Pela chave - NO_MUNICIPIO_PROVA + CAMPO NAO CHAVE = KEY LOOKUP
select NO_MUNICIPIO_ESC, TP_ESCOLA from MICRODADOS_ENEM_2021_SC where NO_MUNICIPIO_ESC = 'IÃ§ara'

--Quantidade de linhas do resultado 
select COUNT(*) from MICRODADOS_ENEM_2021_SC where NO_MUNICIPIO_ESC = 'IÃ§ara'

--CONSULTA Pela chave - NO_MUNICIPIO_PROVA
select NO_MUNICIPIO_ESC, TP_ESCOLA from MICRODADOS_ENEM_2021_SC where NO_MUNICIPIO_ESC = 'IÃ§ara'


--nonclustered
drop index idx1 on MICRODADOS_ENEM_2021_SC
create index idx1 on MICRODADOS_ENEM_2021_SC (NO_MUNICIPIO_ESC) INCLUDE (TP_ESCOLA)

--CONSULTA Pela chave - NO_MUNICIPIO_PROVA + INCLUDE
select NO_MUNICIPIO_ESC, TP_ESCOLA from MICRODADOS_ENEM_2021_SC where NO_MUNICIPIO_ESC = 'IÃ§ara'