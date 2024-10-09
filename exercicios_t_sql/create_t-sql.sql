
CREATE TABLE agenda(
	cd_agenda int IDENTITY(1,1) NOT NULL,
	cd_paciente int NULL,
	cd_profissional int NULL,
	dt_inicio smalldatetime NULL,
	dt_fim smalldatetime NULL,
 CONSTRAINT pk_agenda PRIMARY KEY CLUSTERED 
(
	cd_agenda ASC
)
)
GO

CREATE TABLE aluno(
	cd_aluno int NOT NULL,
	nm_aluno varchar(100) NULL,
	cd_curso int NULL,
	dt_nascimento date NULL,
 CONSTRAINT PK_ALUNO PRIMARY KEY CLUSTERED 
(
	cd_aluno ASC
)
)
GO

CREATE TABLE apolice(
	cod_apolice int NOT NULL,
	cod_cliente int NOT NULL,
	data_inicio_vigencia date NULL,
	data_fim_vigencia date NULL,
	valor_cobertura numeric(10, 2) NULL,
	valor_franquia numeric(10, 2) NULL,
	placa varchar(10) NULL,
 CONSTRAINT pk_apolice PRIMARY KEY CLUSTERED 
(
	cod_cliente ASC,
	cod_apolice ASC
)
)
GO

CREATE TABLE carro(
	placa varchar(10) NOT NULL,
	modelo varchar(50) NULL,
	chassi varchar(30) NOT NULL,
	marca varchar(30) NULL,
	ano int NULL,
	cor varchar(10) NULL,
 CONSTRAINT pk_carro PRIMARY KEY CLUSTERED 
(
	placa ASC
)
)
GO

CREATE TABLE cliente(
	cod_cliente int NOT NULL,
	nome varchar(50) NULL,
	cpf char(11) NOT NULL,
	sexo char(1) NULL,
	endereco varchar(200) NULL,
	telefone_fixo varchar(10) NULL,
	telefone_celular varchar(11) NULL,
 CONSTRAINT pk_cliente PRIMARY KEY CLUSTERED 
(
	cod_cliente ASC
)
)
GO

CREATE TABLE curso(
	cd_curso int NOT NULL,
	nm_curso varchar(100) NULL,
	nm_faculdade varchar(100) NULL,
 CONSTRAINT PK_CURSO PRIMARY KEY CLUSTERED 
(
	cd_curso ASC
)
)
GO

CREATE TABLE paciente(
	cd_paciente int NOT NULL,
	nm_paciente varchar(100) NOT NULL,
	dt_nascimento date NULL,
	status bit NULL,
 CONSTRAINT pk_paciente PRIMARY KEY CLUSTERED 
(
	cd_paciente ASC
)
)
GO

CREATE TABLE profissional(
	cd_profissional int NOT NULL,
	nm_profissional varchar(50) NOT NULL,
 CONSTRAINT pk_profissional PRIMARY KEY CLUSTERED 
(
	cd_profissional ASC
)
)
GO

CREATE TABLE sinistro(
	cod_sinistro int NOT NULL,
	placa varchar(10) NOT NULL,
	data_sinistro date NULL,
	hora_sinistro time(7) NULL,
	local_sinistro varchar(100) NULL,
	condutor varchar(100) NULL,
 CONSTRAINT pk_sinistro PRIMARY KEY CLUSTERED 
(
	cod_sinistro ASC,
	placa ASC
)
)
GO
SET IDENTITY_INSERT agenda ON 
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1, 1087, 11, CAST(N'2020-10-27T16:00:00' AS SmallDateTime), CAST(N'2020-10-27T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (2, 871, 6, CAST(N'2020-01-01T09:00:00' AS SmallDateTime), CAST(N'2020-01-01T09:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (3, 92, 1, CAST(N'2020-01-10T12:30:00' AS SmallDateTime), CAST(N'2020-01-10T13:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (4, 299, 6, CAST(N'2020-02-03T08:00:00' AS SmallDateTime), CAST(N'2020-02-03T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (5, 299, 6, CAST(N'2020-02-07T08:00:00' AS SmallDateTime), CAST(N'2020-02-07T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (6, 299, 6, CAST(N'2020-02-10T08:00:00' AS SmallDateTime), CAST(N'2020-02-10T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (7, 299, 6, CAST(N'2020-02-14T08:00:00' AS SmallDateTime), CAST(N'2020-02-14T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (8, 299, 6, CAST(N'2020-02-17T08:00:00' AS SmallDateTime), CAST(N'2020-02-17T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (9, 299, 6, CAST(N'2020-02-21T08:00:00' AS SmallDateTime), CAST(N'2020-02-21T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (10, 299, 6, CAST(N'2020-02-24T08:00:00' AS SmallDateTime), CAST(N'2020-02-24T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (11, 299, 6, CAST(N'2020-02-28T08:00:00' AS SmallDateTime), CAST(N'2020-02-28T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (12, 299, 6, CAST(N'2020-03-02T08:00:00' AS SmallDateTime), CAST(N'2020-03-02T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (13, 299, 4, CAST(N'2020-03-06T07:51:00' AS SmallDateTime), CAST(N'2020-03-06T08:51:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (14, 299, 6, CAST(N'2020-03-09T08:00:00' AS SmallDateTime), CAST(N'2020-03-09T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (15, 299, 6, CAST(N'2020-03-13T08:00:00' AS SmallDateTime), CAST(N'2020-03-13T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (16, 299, 6, CAST(N'2020-03-16T08:00:00' AS SmallDateTime), CAST(N'2020-03-16T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (17, 299, 6, CAST(N'2020-03-20T08:00:00' AS SmallDateTime), CAST(N'2020-03-20T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (18, 299, 2, CAST(N'2020-03-23T08:00:00' AS SmallDateTime), CAST(N'2020-03-23T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (19, 299, 2, CAST(N'2020-03-27T08:00:00' AS SmallDateTime), CAST(N'2020-03-27T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (20, 299, 2, CAST(N'2020-03-30T08:00:00' AS SmallDateTime), CAST(N'2020-03-30T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (21, 299, 2, CAST(N'2020-04-03T08:00:00' AS SmallDateTime), CAST(N'2020-04-03T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (22, 299, 2, CAST(N'2020-04-06T08:00:00' AS SmallDateTime), CAST(N'2020-04-06T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (23, 299, 2, CAST(N'2020-04-10T08:00:00' AS SmallDateTime), CAST(N'2020-04-10T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (24, 299, 2, CAST(N'2020-04-13T08:00:00' AS SmallDateTime), CAST(N'2020-04-13T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (25, 299, 2, CAST(N'2020-04-17T08:00:00' AS SmallDateTime), CAST(N'2020-04-17T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (26, 299, 2, CAST(N'2020-04-20T08:00:00' AS SmallDateTime), CAST(N'2020-04-20T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (27, 299, 2, CAST(N'2020-04-24T08:00:00' AS SmallDateTime), CAST(N'2020-04-24T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (28, 299, 2, CAST(N'2020-04-27T08:00:00' AS SmallDateTime), CAST(N'2020-04-27T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (29, 299, 2, CAST(N'2020-05-01T08:00:00' AS SmallDateTime), CAST(N'2020-05-01T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (30, 299, 2, CAST(N'2020-05-04T08:00:00' AS SmallDateTime), CAST(N'2020-05-04T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (31, 299, 2, CAST(N'2020-05-08T08:00:00' AS SmallDateTime), CAST(N'2020-05-08T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (32, 299, 2, CAST(N'2020-05-11T08:00:00' AS SmallDateTime), CAST(N'2020-05-11T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (33, 299, 2, CAST(N'2020-05-15T08:00:00' AS SmallDateTime), CAST(N'2020-05-15T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (34, 299, 2, CAST(N'2020-05-18T08:00:00' AS SmallDateTime), CAST(N'2020-05-18T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (35, 299, 2, CAST(N'2020-05-22T08:00:00' AS SmallDateTime), CAST(N'2020-05-22T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (36, 299, 2, CAST(N'2020-05-25T08:00:00' AS SmallDateTime), CAST(N'2020-05-25T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (37, 299, 2, CAST(N'2020-05-29T08:00:00' AS SmallDateTime), CAST(N'2020-05-29T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (38, 716, 5, CAST(N'2020-01-21T08:30:00' AS SmallDateTime), CAST(N'2020-01-21T09:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (39, 310, 2, CAST(N'2020-01-15T13:00:00' AS SmallDateTime), CAST(N'2020-01-15T14:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (40, 952, 5, CAST(N'2020-02-03T14:30:00' AS SmallDateTime), CAST(N'2020-02-03T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (41, 61, 1, CAST(N'2020-01-13T18:00:00' AS SmallDateTime), CAST(N'2020-01-13T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (42, 61, 1, CAST(N'2020-01-27T18:00:00' AS SmallDateTime), CAST(N'2020-01-27T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (43, 61, 1, CAST(N'2020-02-10T18:00:00' AS SmallDateTime), CAST(N'2020-02-10T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (44, 180, 1, CAST(N'2020-01-14T18:00:00' AS SmallDateTime), CAST(N'2020-01-14T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (45, 180, 1, CAST(N'2020-01-28T18:00:00' AS SmallDateTime), CAST(N'2020-01-28T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (46, 180, 1, CAST(N'2020-02-11T18:00:00' AS SmallDateTime), CAST(N'2020-02-11T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (47, 180, 1, CAST(N'2020-03-10T18:00:00' AS SmallDateTime), CAST(N'2020-03-10T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (48, 180, 1, CAST(N'2020-03-24T18:00:00' AS SmallDateTime), CAST(N'2020-03-24T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (49, 180, 1, CAST(N'2020-04-07T18:00:00' AS SmallDateTime), CAST(N'2020-04-07T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (50, 180, 1, CAST(N'2020-04-21T18:00:00' AS SmallDateTime), CAST(N'2020-04-21T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (51, 180, 1, CAST(N'2020-05-05T18:00:00' AS SmallDateTime), CAST(N'2020-05-05T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (52, 145, 1, CAST(N'2020-01-20T17:00:00' AS SmallDateTime), CAST(N'2020-01-20T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (53, 93, 1, CAST(N'2020-01-08T14:30:00' AS SmallDateTime), CAST(N'2020-01-08T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (54, 161, 1, CAST(N'2020-01-09T18:00:00' AS SmallDateTime), CAST(N'2020-01-09T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (55, 712, 2, CAST(N'2020-01-13T14:30:00' AS SmallDateTime), CAST(N'2020-01-13T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (56, 865, 5, CAST(N'2020-01-07T10:30:00' AS SmallDateTime), CAST(N'2020-01-07T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (57, 613, 1, CAST(N'2020-01-09T19:00:00' AS SmallDateTime), CAST(N'2020-01-09T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (58, 168, 2, CAST(N'2020-01-07T08:00:00' AS SmallDateTime), CAST(N'2020-01-07T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (59, 168, 2, CAST(N'2020-01-09T08:00:00' AS SmallDateTime), CAST(N'2020-01-09T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (60, 168, 2, CAST(N'2020-01-14T08:00:00' AS SmallDateTime), CAST(N'2020-01-14T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (61, 168, 2, CAST(N'2020-01-16T08:00:00' AS SmallDateTime), CAST(N'2020-01-16T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (62, 168, 2, CAST(N'2020-01-21T08:00:00' AS SmallDateTime), CAST(N'2020-01-21T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (63, 168, 2, CAST(N'2020-01-23T08:00:00' AS SmallDateTime), CAST(N'2020-01-23T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (64, 168, 2, CAST(N'2020-01-28T08:00:00' AS SmallDateTime), CAST(N'2020-01-28T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (65, 168, 2, CAST(N'2020-01-30T08:00:00' AS SmallDateTime), CAST(N'2020-01-30T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (66, 168, 2, CAST(N'2020-02-04T08:00:00' AS SmallDateTime), CAST(N'2020-02-04T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (67, 168, 2, CAST(N'2020-02-06T08:00:00' AS SmallDateTime), CAST(N'2020-02-06T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (68, 168, 2, CAST(N'2020-02-11T08:00:00' AS SmallDateTime), CAST(N'2020-02-11T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (69, 168, 2, CAST(N'2020-02-13T08:00:00' AS SmallDateTime), CAST(N'2020-02-13T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (70, 168, 2, CAST(N'2020-02-18T08:00:00' AS SmallDateTime), CAST(N'2020-02-18T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (71, 168, 2, CAST(N'2020-02-20T08:00:00' AS SmallDateTime), CAST(N'2020-02-20T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (72, 168, 2, CAST(N'2020-02-25T08:00:00' AS SmallDateTime), CAST(N'2020-02-25T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (73, 168, 2, CAST(N'2020-02-27T08:00:00' AS SmallDateTime), CAST(N'2020-02-27T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (74, 168, 2, CAST(N'2020-03-03T08:00:00' AS SmallDateTime), CAST(N'2020-03-03T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (75, 168, 2, CAST(N'2020-03-05T08:00:00' AS SmallDateTime), CAST(N'2020-03-05T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (76, 168, 2, CAST(N'2020-03-10T08:00:00' AS SmallDateTime), CAST(N'2020-03-10T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (77, 168, 2, CAST(N'2020-03-12T08:00:00' AS SmallDateTime), CAST(N'2020-03-12T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (78, 168, 2, CAST(N'2020-03-17T08:00:00' AS SmallDateTime), CAST(N'2020-03-17T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (79, 168, 2, CAST(N'2020-03-19T08:00:00' AS SmallDateTime), CAST(N'2020-03-19T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (80, 168, 2, CAST(N'2020-03-24T08:00:00' AS SmallDateTime), CAST(N'2020-03-24T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (81, 168, 2, CAST(N'2020-03-26T08:00:00' AS SmallDateTime), CAST(N'2020-03-26T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (82, 168, 2, CAST(N'2020-03-31T08:00:00' AS SmallDateTime), CAST(N'2020-03-31T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (83, 168, 2, CAST(N'2020-04-02T08:00:00' AS SmallDateTime), CAST(N'2020-04-02T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (84, 168, 2, CAST(N'2020-04-07T08:00:00' AS SmallDateTime), CAST(N'2020-04-07T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (85, 168, 2, CAST(N'2020-04-09T08:00:00' AS SmallDateTime), CAST(N'2020-04-09T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (86, 168, 2, CAST(N'2020-04-14T08:00:00' AS SmallDateTime), CAST(N'2020-04-14T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (87, 168, 2, CAST(N'2020-04-16T08:00:00' AS SmallDateTime), CAST(N'2020-04-16T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (88, 168, 2, CAST(N'2020-04-21T08:00:00' AS SmallDateTime), CAST(N'2020-04-21T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (89, 168, 2, CAST(N'2020-04-23T08:00:00' AS SmallDateTime), CAST(N'2020-04-23T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (90, 168, 2, CAST(N'2020-04-28T08:00:00' AS SmallDateTime), CAST(N'2020-04-28T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (91, 168, 2, CAST(N'2020-04-30T08:00:00' AS SmallDateTime), CAST(N'2020-04-30T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (92, 168, 2, CAST(N'2020-05-05T08:00:00' AS SmallDateTime), CAST(N'2020-05-05T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (93, 168, 2, CAST(N'2020-05-07T08:00:00' AS SmallDateTime), CAST(N'2020-05-07T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (94, 168, 2, CAST(N'2020-05-12T08:00:00' AS SmallDateTime), CAST(N'2020-05-12T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (95, 168, 2, CAST(N'2020-05-14T08:00:00' AS SmallDateTime), CAST(N'2020-05-14T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (96, 168, 2, CAST(N'2020-05-19T08:00:00' AS SmallDateTime), CAST(N'2020-05-19T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (97, 168, 2, CAST(N'2020-05-21T08:00:00' AS SmallDateTime), CAST(N'2020-05-21T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (98, 168, 2, CAST(N'2020-05-26T08:00:00' AS SmallDateTime), CAST(N'2020-05-26T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (99, 168, 2, CAST(N'2020-05-28T08:00:00' AS SmallDateTime), CAST(N'2020-05-28T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (100, 122, 2, CAST(N'2020-01-07T18:00:00' AS SmallDateTime), CAST(N'2020-01-07T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (101, 590, 5, CAST(N'2020-01-07T15:30:00' AS SmallDateTime), CAST(N'2020-01-07T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (102, 680, 5, CAST(N'2020-01-08T19:30:00' AS SmallDateTime), CAST(N'2020-01-08T20:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (103, 426, 5, CAST(N'2020-01-09T08:30:00' AS SmallDateTime), CAST(N'2020-01-09T09:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (104, 293, 2, CAST(N'2020-01-08T08:00:00' AS SmallDateTime), CAST(N'2020-01-08T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (105, 830, 5, CAST(N'2020-01-09T09:30:00' AS SmallDateTime), CAST(N'2020-01-09T10:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (106, 429, 5, CAST(N'2020-01-08T17:30:00' AS SmallDateTime), CAST(N'2020-01-08T18:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (107, 429, 5, CAST(N'2020-01-13T17:00:00' AS SmallDateTime), CAST(N'2020-01-13T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (108, 161, 1, CAST(N'2020-01-22T18:00:00' AS SmallDateTime), CAST(N'2020-01-22T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (109, 161, 1, CAST(N'2020-02-05T18:00:00' AS SmallDateTime), CAST(N'2020-02-05T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (110, 161, 1, CAST(N'2020-02-19T18:00:00' AS SmallDateTime), CAST(N'2020-02-19T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (111, 161, 1, CAST(N'2020-03-04T18:00:00' AS SmallDateTime), CAST(N'2020-03-04T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (112, 161, 1, CAST(N'2020-03-18T18:00:00' AS SmallDateTime), CAST(N'2020-03-18T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (113, 161, 1, CAST(N'2020-04-01T18:00:00' AS SmallDateTime), CAST(N'2020-04-01T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (114, 161, 1, CAST(N'2020-04-15T18:00:00' AS SmallDateTime), CAST(N'2020-04-15T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (115, 161, 1, CAST(N'2020-04-29T18:00:00' AS SmallDateTime), CAST(N'2020-04-29T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (116, 161, 1, CAST(N'2020-05-13T18:00:00' AS SmallDateTime), CAST(N'2020-05-13T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (117, 190, 1, CAST(N'2020-01-13T17:00:00' AS SmallDateTime), CAST(N'2020-01-13T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (118, 519, 5, CAST(N'2020-01-10T09:30:00' AS SmallDateTime), CAST(N'2020-01-10T10:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (119, 135, 5, CAST(N'2020-01-15T14:30:00' AS SmallDateTime), CAST(N'2020-01-15T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (120, 152, 5, CAST(N'2020-01-10T08:30:00' AS SmallDateTime), CAST(N'2020-01-10T09:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (121, 865, 5, CAST(N'2020-01-23T13:30:00' AS SmallDateTime), CAST(N'2020-01-23T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (122, 926, 5, CAST(N'2020-01-10T13:30:00' AS SmallDateTime), CAST(N'2020-01-10T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (123, 1128, 5, CAST(N'2020-01-08T17:30:00' AS SmallDateTime), CAST(N'2020-01-08T18:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (124, 653, 6, CAST(N'2020-01-13T19:00:00' AS SmallDateTime), CAST(N'2020-01-13T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (125, 93, 1, CAST(N'2020-01-14T14:30:00' AS SmallDateTime), CAST(N'2020-01-14T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (126, 93, 1, CAST(N'2020-01-21T14:30:00' AS SmallDateTime), CAST(N'2020-01-21T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (127, 93, 1, CAST(N'2020-01-28T14:30:00' AS SmallDateTime), CAST(N'2020-01-28T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (128, 93, 1, CAST(N'2020-02-04T14:30:00' AS SmallDateTime), CAST(N'2020-02-04T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (129, 93, 1, CAST(N'2020-02-11T14:30:00' AS SmallDateTime), CAST(N'2020-02-11T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (130, 93, 1, CAST(N'2020-02-18T14:30:00' AS SmallDateTime), CAST(N'2020-02-18T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (131, 190, 1, CAST(N'2020-01-27T17:00:00' AS SmallDateTime), CAST(N'2020-01-27T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (132, 833, 2, CAST(N'2020-01-21T09:00:00' AS SmallDateTime), CAST(N'2020-01-21T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (133, 122, 2, CAST(N'2020-01-09T18:00:00' AS SmallDateTime), CAST(N'2020-01-09T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (134, 122, 2, CAST(N'2020-01-14T18:00:00' AS SmallDateTime), CAST(N'2020-01-14T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (135, 122, 2, CAST(N'2020-01-16T18:00:00' AS SmallDateTime), CAST(N'2020-01-16T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (136, 122, 2, CAST(N'2020-01-21T18:00:00' AS SmallDateTime), CAST(N'2020-01-21T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (137, 122, 2, CAST(N'2020-01-23T18:00:00' AS SmallDateTime), CAST(N'2020-01-23T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (138, 122, 2, CAST(N'2020-01-28T18:00:00' AS SmallDateTime), CAST(N'2020-01-28T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (139, 122, 2, CAST(N'2020-01-30T18:00:00' AS SmallDateTime), CAST(N'2020-01-30T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (140, 122, 2, CAST(N'2020-02-04T18:00:00' AS SmallDateTime), CAST(N'2020-02-04T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (141, 122, 2, CAST(N'2020-02-06T18:00:00' AS SmallDateTime), CAST(N'2020-02-06T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (142, 122, 2, CAST(N'2020-02-11T18:00:00' AS SmallDateTime), CAST(N'2020-02-11T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (143, 122, 2, CAST(N'2020-02-13T18:00:00' AS SmallDateTime), CAST(N'2020-02-13T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (144, 122, 2, CAST(N'2020-02-18T18:00:00' AS SmallDateTime), CAST(N'2020-02-18T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (145, 122, 2, CAST(N'2020-02-20T18:00:00' AS SmallDateTime), CAST(N'2020-02-20T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (146, 122, 2, CAST(N'2020-02-25T18:00:00' AS SmallDateTime), CAST(N'2020-02-25T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (147, 122, 2, CAST(N'2020-02-27T18:00:00' AS SmallDateTime), CAST(N'2020-02-27T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (148, 122, 2, CAST(N'2020-03-03T18:00:00' AS SmallDateTime), CAST(N'2020-03-03T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (149, 122, 2, CAST(N'2020-03-05T18:00:00' AS SmallDateTime), CAST(N'2020-03-05T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (150, 122, 2, CAST(N'2020-03-10T18:00:00' AS SmallDateTime), CAST(N'2020-03-10T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (151, 122, 2, CAST(N'2020-03-12T18:00:00' AS SmallDateTime), CAST(N'2020-03-12T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (152, 122, 2, CAST(N'2020-03-17T18:00:00' AS SmallDateTime), CAST(N'2020-03-17T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (153, 122, 2, CAST(N'2020-03-19T18:00:00' AS SmallDateTime), CAST(N'2020-03-19T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (154, 122, 2, CAST(N'2020-03-24T18:00:00' AS SmallDateTime), CAST(N'2020-03-24T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (155, 122, 2, CAST(N'2020-03-26T18:00:00' AS SmallDateTime), CAST(N'2020-03-26T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (156, 122, 2, CAST(N'2020-03-31T18:00:00' AS SmallDateTime), CAST(N'2020-03-31T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (157, 122, 2, CAST(N'2020-04-02T18:00:00' AS SmallDateTime), CAST(N'2020-04-02T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (158, 122, 2, CAST(N'2020-04-07T18:00:00' AS SmallDateTime), CAST(N'2020-04-07T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (159, 122, 2, CAST(N'2020-04-09T18:00:00' AS SmallDateTime), CAST(N'2020-04-09T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (160, 122, 2, CAST(N'2020-04-14T18:00:00' AS SmallDateTime), CAST(N'2020-04-14T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (161, 122, 2, CAST(N'2020-04-16T18:00:00' AS SmallDateTime), CAST(N'2020-04-16T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (162, 122, 2, CAST(N'2020-04-21T18:00:00' AS SmallDateTime), CAST(N'2020-04-21T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (163, 122, 2, CAST(N'2020-04-23T18:00:00' AS SmallDateTime), CAST(N'2020-04-23T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (164, 122, 2, CAST(N'2020-04-28T18:00:00' AS SmallDateTime), CAST(N'2020-04-28T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (165, 122, 2, CAST(N'2020-04-30T18:00:00' AS SmallDateTime), CAST(N'2020-04-30T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (166, 122, 2, CAST(N'2020-05-05T18:00:00' AS SmallDateTime), CAST(N'2020-05-05T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (167, 122, 2, CAST(N'2020-05-07T18:00:00' AS SmallDateTime), CAST(N'2020-05-07T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (168, 122, 2, CAST(N'2020-05-12T18:00:00' AS SmallDateTime), CAST(N'2020-05-12T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (169, 122, 2, CAST(N'2020-05-14T18:00:00' AS SmallDateTime), CAST(N'2020-05-14T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (170, 122, 2, CAST(N'2020-05-19T18:00:00' AS SmallDateTime), CAST(N'2020-05-19T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (171, 122, 2, CAST(N'2020-05-21T18:00:00' AS SmallDateTime), CAST(N'2020-05-21T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (172, 122, 2, CAST(N'2020-05-26T18:00:00' AS SmallDateTime), CAST(N'2020-05-26T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (173, 122, 2, CAST(N'2020-05-28T18:00:00' AS SmallDateTime), CAST(N'2020-05-28T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (174, 122, 2, CAST(N'2020-06-02T18:00:00' AS SmallDateTime), CAST(N'2020-06-02T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (175, 122, 2, CAST(N'2020-06-04T18:00:00' AS SmallDateTime), CAST(N'2020-06-04T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (176, 122, 2, CAST(N'2020-06-09T18:00:00' AS SmallDateTime), CAST(N'2020-06-09T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (177, 122, 2, CAST(N'2020-06-11T18:00:00' AS SmallDateTime), CAST(N'2020-06-11T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (178, 122, 2, CAST(N'2020-06-16T18:00:00' AS SmallDateTime), CAST(N'2020-06-16T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (179, 122, 2, CAST(N'2020-06-18T18:00:00' AS SmallDateTime), CAST(N'2020-06-18T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (180, 122, 2, CAST(N'2020-06-23T18:00:00' AS SmallDateTime), CAST(N'2020-06-23T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (181, 122, 2, CAST(N'2020-06-25T18:00:00' AS SmallDateTime), CAST(N'2020-06-25T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (182, 122, 2, CAST(N'2020-06-30T18:00:00' AS SmallDateTime), CAST(N'2020-06-30T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (183, 122, 2, CAST(N'2020-07-02T18:00:00' AS SmallDateTime), CAST(N'2020-07-02T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (184, 122, 2, CAST(N'2020-07-07T18:00:00' AS SmallDateTime), CAST(N'2020-07-07T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (185, 122, 2, CAST(N'2020-07-09T18:00:00' AS SmallDateTime), CAST(N'2020-07-09T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (186, 122, 2, CAST(N'2020-07-14T18:00:00' AS SmallDateTime), CAST(N'2020-07-14T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (187, 122, 2, CAST(N'2020-07-16T18:00:00' AS SmallDateTime), CAST(N'2020-07-16T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (188, 122, 2, CAST(N'2020-07-21T18:00:00' AS SmallDateTime), CAST(N'2020-07-21T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (189, 122, 2, CAST(N'2020-07-23T18:00:00' AS SmallDateTime), CAST(N'2020-07-23T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (190, 122, 2, CAST(N'2020-07-28T18:00:00' AS SmallDateTime), CAST(N'2020-07-28T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (191, 122, 2, CAST(N'2020-07-30T18:00:00' AS SmallDateTime), CAST(N'2020-07-30T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (192, 122, 2, CAST(N'2020-08-04T18:00:00' AS SmallDateTime), CAST(N'2020-08-04T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (193, 122, 2, CAST(N'2020-08-06T18:00:00' AS SmallDateTime), CAST(N'2020-08-06T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (194, 122, 2, CAST(N'2020-08-11T18:00:00' AS SmallDateTime), CAST(N'2020-08-11T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (195, 122, 2, CAST(N'2020-08-13T18:00:00' AS SmallDateTime), CAST(N'2020-08-13T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (196, 122, 2, CAST(N'2020-08-18T18:00:00' AS SmallDateTime), CAST(N'2020-08-18T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (197, 122, 2, CAST(N'2020-08-20T18:00:00' AS SmallDateTime), CAST(N'2020-08-20T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (198, 122, 2, CAST(N'2020-08-25T18:00:00' AS SmallDateTime), CAST(N'2020-08-25T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (199, 122, 2, CAST(N'2020-08-27T18:00:00' AS SmallDateTime), CAST(N'2020-08-27T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (200, 122, 2, CAST(N'2020-09-01T18:00:00' AS SmallDateTime), CAST(N'2020-09-01T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (201, 122, 2, CAST(N'2020-09-03T18:00:00' AS SmallDateTime), CAST(N'2020-09-03T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (202, 122, 2, CAST(N'2020-09-08T18:00:00' AS SmallDateTime), CAST(N'2020-09-08T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (203, 37, 5, CAST(N'2020-01-23T18:00:00' AS SmallDateTime), CAST(N'2020-01-23T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (204, 613, 1, CAST(N'2020-01-23T19:00:00' AS SmallDateTime), CAST(N'2020-01-23T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (205, 613, 1, CAST(N'2020-02-06T19:00:00' AS SmallDateTime), CAST(N'2020-02-06T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (206, 613, 1, CAST(N'2020-02-20T19:00:00' AS SmallDateTime), CAST(N'2020-02-20T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (207, 613, 1, CAST(N'2020-03-05T19:00:00' AS SmallDateTime), CAST(N'2020-03-05T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (208, 613, 1, CAST(N'2020-03-19T19:00:00' AS SmallDateTime), CAST(N'2020-03-19T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (209, 613, 1, CAST(N'2020-04-02T19:00:00' AS SmallDateTime), CAST(N'2020-04-02T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (210, 613, 1, CAST(N'2020-04-16T19:00:00' AS SmallDateTime), CAST(N'2020-04-16T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (211, 613, 1, CAST(N'2020-04-30T19:00:00' AS SmallDateTime), CAST(N'2020-04-30T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (212, 613, 1, CAST(N'2020-05-14T19:00:00' AS SmallDateTime), CAST(N'2020-05-14T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (213, 310, 6, CAST(N'2020-01-10T15:30:00' AS SmallDateTime), CAST(N'2020-01-10T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (214, 712, 2, CAST(N'2020-01-16T15:30:00' AS SmallDateTime), CAST(N'2020-01-16T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (215, 712, 2, CAST(N'2020-01-23T15:30:00' AS SmallDateTime), CAST(N'2020-01-23T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (216, 712, 2, CAST(N'2020-01-30T15:30:00' AS SmallDateTime), CAST(N'2020-01-30T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (217, 712, 2, CAST(N'2020-02-06T15:30:00' AS SmallDateTime), CAST(N'2020-02-06T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (218, 712, 2, CAST(N'2020-02-13T15:30:00' AS SmallDateTime), CAST(N'2020-02-13T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (219, 712, 2, CAST(N'2020-02-20T15:30:00' AS SmallDateTime), CAST(N'2020-02-20T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (220, 712, 2, CAST(N'2020-02-27T16:30:00' AS SmallDateTime), CAST(N'2020-02-27T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (221, 712, 2, CAST(N'2020-03-05T15:30:00' AS SmallDateTime), CAST(N'2020-03-05T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (222, 712, 2, CAST(N'2020-03-12T15:30:00' AS SmallDateTime), CAST(N'2020-03-12T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (223, 712, 2, CAST(N'2020-03-19T15:30:00' AS SmallDateTime), CAST(N'2020-03-19T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (224, 712, 2, CAST(N'2020-03-26T16:00:00' AS SmallDateTime), CAST(N'2020-03-26T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (225, 712, 2, CAST(N'2020-04-02T16:30:00' AS SmallDateTime), CAST(N'2020-04-02T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (226, 712, 2, CAST(N'2020-04-23T15:30:00' AS SmallDateTime), CAST(N'2020-04-23T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (227, 712, 2, CAST(N'2020-04-30T16:30:00' AS SmallDateTime), CAST(N'2020-04-30T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (228, 712, 2, CAST(N'2020-05-07T15:30:00' AS SmallDateTime), CAST(N'2020-05-07T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (229, 712, 2, CAST(N'2020-05-14T15:30:00' AS SmallDateTime), CAST(N'2020-05-14T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (230, 712, 2, CAST(N'2020-05-21T16:30:00' AS SmallDateTime), CAST(N'2020-05-21T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (231, 712, 2, CAST(N'2020-05-28T17:00:00' AS SmallDateTime), CAST(N'2020-05-28T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (232, 712, 2, CAST(N'2020-06-04T15:00:00' AS SmallDateTime), CAST(N'2020-06-04T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (233, 712, 2, CAST(N'2020-06-11T15:30:00' AS SmallDateTime), CAST(N'2020-06-11T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (234, 712, 2, CAST(N'2020-06-18T14:30:00' AS SmallDateTime), CAST(N'2020-06-18T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (235, 712, 2, CAST(N'2020-06-25T15:30:00' AS SmallDateTime), CAST(N'2020-06-25T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (236, 712, 2, CAST(N'2020-07-02T15:30:00' AS SmallDateTime), CAST(N'2020-07-02T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (237, 712, 2, CAST(N'2020-07-09T15:30:00' AS SmallDateTime), CAST(N'2020-07-09T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (238, 712, 2, CAST(N'2020-07-16T15:30:00' AS SmallDateTime), CAST(N'2020-07-16T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (239, 712, 2, CAST(N'2020-07-23T15:30:00' AS SmallDateTime), CAST(N'2020-07-23T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (240, 712, 2, CAST(N'2020-07-30T15:30:00' AS SmallDateTime), CAST(N'2020-07-30T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (241, 712, 2, CAST(N'2020-08-06T15:30:00' AS SmallDateTime), CAST(N'2020-08-06T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (242, 712, 2, CAST(N'2020-08-13T15:30:00' AS SmallDateTime), CAST(N'2020-08-13T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (243, 712, 2, CAST(N'2020-08-20T15:30:00' AS SmallDateTime), CAST(N'2020-08-20T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (244, 712, 2, CAST(N'2020-08-27T15:30:00' AS SmallDateTime), CAST(N'2020-08-27T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (245, 712, 2, CAST(N'2020-09-03T15:30:00' AS SmallDateTime), CAST(N'2020-09-03T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (246, 712, 2, CAST(N'2020-09-10T15:30:00' AS SmallDateTime), CAST(N'2020-09-10T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (247, 712, 2, CAST(N'2020-09-17T15:30:00' AS SmallDateTime), CAST(N'2020-09-17T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (248, 712, 2, CAST(N'2020-09-24T15:30:00' AS SmallDateTime), CAST(N'2020-09-24T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (249, 712, 2, CAST(N'2020-10-01T15:30:00' AS SmallDateTime), CAST(N'2020-10-01T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (250, 712, 2, CAST(N'2020-10-08T15:30:00' AS SmallDateTime), CAST(N'2020-10-08T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (251, 712, 2, CAST(N'2020-10-15T15:30:00' AS SmallDateTime), CAST(N'2020-10-15T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (252, 712, 2, CAST(N'2020-10-22T15:30:00' AS SmallDateTime), CAST(N'2020-10-22T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (253, 712, 2, CAST(N'2020-10-29T15:30:00' AS SmallDateTime), CAST(N'2020-10-29T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (254, 712, 2, CAST(N'2020-11-05T15:30:00' AS SmallDateTime), CAST(N'2020-11-05T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (255, 712, 2, CAST(N'2020-11-12T15:30:00' AS SmallDateTime), CAST(N'2020-11-12T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (256, 712, 2, CAST(N'2020-11-19T15:30:00' AS SmallDateTime), CAST(N'2020-11-19T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (257, 712, 2, CAST(N'2020-11-26T15:30:00' AS SmallDateTime), CAST(N'2020-11-26T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (258, 712, 2, CAST(N'2020-12-03T15:30:00' AS SmallDateTime), CAST(N'2020-12-03T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (259, 712, 2, CAST(N'2020-12-10T15:30:00' AS SmallDateTime), CAST(N'2020-12-10T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (260, 712, 2, CAST(N'2020-12-17T15:30:00' AS SmallDateTime), CAST(N'2020-12-17T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (261, 712, 2, CAST(N'2020-01-20T14:30:00' AS SmallDateTime), CAST(N'2020-01-20T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (262, 712, 2, CAST(N'2020-01-27T14:30:00' AS SmallDateTime), CAST(N'2020-01-27T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (263, 712, 2, CAST(N'2020-02-03T14:30:00' AS SmallDateTime), CAST(N'2020-02-03T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (264, 712, 2, CAST(N'2020-02-10T14:30:00' AS SmallDateTime), CAST(N'2020-02-10T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (265, 712, 2, CAST(N'2020-02-17T14:30:00' AS SmallDateTime), CAST(N'2020-02-17T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (266, 712, 2, CAST(N'2020-02-24T14:30:00' AS SmallDateTime), CAST(N'2020-02-24T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (267, 712, 2, CAST(N'2020-03-02T14:30:00' AS SmallDateTime), CAST(N'2020-03-02T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (268, 712, 2, CAST(N'2020-03-09T14:30:00' AS SmallDateTime), CAST(N'2020-03-09T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (269, 712, 2, CAST(N'2020-03-16T14:30:00' AS SmallDateTime), CAST(N'2020-03-16T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (270, 712, 2, CAST(N'2020-03-23T14:30:00' AS SmallDateTime), CAST(N'2020-03-23T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (271, 712, 2, CAST(N'2020-03-30T14:30:00' AS SmallDateTime), CAST(N'2020-03-30T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (272, 712, 2, CAST(N'2020-04-06T14:30:00' AS SmallDateTime), CAST(N'2020-04-06T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (273, 712, 2, CAST(N'2020-04-13T14:30:00' AS SmallDateTime), CAST(N'2020-04-13T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (274, 712, 2, CAST(N'2020-04-20T14:30:00' AS SmallDateTime), CAST(N'2020-04-20T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (275, 712, 2, CAST(N'2020-04-27T14:30:00' AS SmallDateTime), CAST(N'2020-04-27T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (276, 712, 2, CAST(N'2020-05-04T14:30:00' AS SmallDateTime), CAST(N'2020-05-04T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (277, 712, 2, CAST(N'2020-05-11T14:30:00' AS SmallDateTime), CAST(N'2020-05-11T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (278, 712, 2, CAST(N'2020-05-18T14:30:00' AS SmallDateTime), CAST(N'2020-05-18T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (279, 712, 2, CAST(N'2020-05-25T14:30:00' AS SmallDateTime), CAST(N'2020-05-25T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (280, 712, 2, CAST(N'2020-06-01T14:30:00' AS SmallDateTime), CAST(N'2020-06-01T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (281, 712, 2, CAST(N'2020-06-08T14:30:00' AS SmallDateTime), CAST(N'2020-06-08T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (282, 712, 2, CAST(N'2020-06-15T17:30:00' AS SmallDateTime), CAST(N'2020-06-15T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (283, 712, 2, CAST(N'2020-06-22T14:30:00' AS SmallDateTime), CAST(N'2020-06-22T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (284, 712, 2, CAST(N'2020-06-29T14:30:00' AS SmallDateTime), CAST(N'2020-06-29T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (285, 712, 2, CAST(N'2020-07-06T14:30:00' AS SmallDateTime), CAST(N'2020-07-06T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (286, 712, 2, CAST(N'2020-07-13T14:30:00' AS SmallDateTime), CAST(N'2020-07-13T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (287, 712, 2, CAST(N'2020-07-20T14:30:00' AS SmallDateTime), CAST(N'2020-07-20T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (288, 712, 2, CAST(N'2020-07-27T14:30:00' AS SmallDateTime), CAST(N'2020-07-27T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (289, 712, 2, CAST(N'2020-08-03T14:30:00' AS SmallDateTime), CAST(N'2020-08-03T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (290, 712, 2, CAST(N'2020-08-10T14:30:00' AS SmallDateTime), CAST(N'2020-08-10T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (291, 712, 2, CAST(N'2020-08-17T14:30:00' AS SmallDateTime), CAST(N'2020-08-17T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (292, 712, 2, CAST(N'2020-08-24T14:30:00' AS SmallDateTime), CAST(N'2020-08-24T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (293, 712, 2, CAST(N'2020-08-31T14:30:00' AS SmallDateTime), CAST(N'2020-08-31T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (294, 712, 2, CAST(N'2020-09-07T14:30:00' AS SmallDateTime), CAST(N'2020-09-07T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (295, 712, 2, CAST(N'2020-09-14T14:30:00' AS SmallDateTime), CAST(N'2020-09-14T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (296, 712, 2, CAST(N'2020-09-21T14:30:00' AS SmallDateTime), CAST(N'2020-09-21T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (297, 712, 2, CAST(N'2020-09-28T14:30:00' AS SmallDateTime), CAST(N'2020-09-28T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (298, 712, 2, CAST(N'2020-10-05T14:30:00' AS SmallDateTime), CAST(N'2020-10-05T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (299, 712, 2, CAST(N'2020-10-12T14:30:00' AS SmallDateTime), CAST(N'2020-10-12T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (300, 712, 2, CAST(N'2020-10-19T14:30:00' AS SmallDateTime), CAST(N'2020-10-19T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (301, 712, 2, CAST(N'2020-10-26T14:30:00' AS SmallDateTime), CAST(N'2020-10-26T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (302, 712, 2, CAST(N'2020-11-02T14:30:00' AS SmallDateTime), CAST(N'2020-11-02T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (303, 712, 2, CAST(N'2020-11-09T14:30:00' AS SmallDateTime), CAST(N'2020-11-09T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (304, 712, 2, CAST(N'2020-11-16T14:30:00' AS SmallDateTime), CAST(N'2020-11-16T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (305, 712, 2, CAST(N'2020-11-23T14:30:00' AS SmallDateTime), CAST(N'2020-11-23T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (306, 712, 2, CAST(N'2020-11-30T14:30:00' AS SmallDateTime), CAST(N'2020-11-30T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (307, 712, 2, CAST(N'2020-12-07T14:30:00' AS SmallDateTime), CAST(N'2020-12-07T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (308, 712, 2, CAST(N'2020-12-14T14:30:00' AS SmallDateTime), CAST(N'2020-12-14T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (309, 152, 2, CAST(N'2020-01-14T17:00:00' AS SmallDateTime), CAST(N'2020-01-14T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (310, 37, 2, CAST(N'2020-01-14T17:00:00' AS SmallDateTime), CAST(N'2020-01-14T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (311, 37, 2, CAST(N'2020-01-16T17:00:00' AS SmallDateTime), CAST(N'2020-01-16T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (312, 37, 2, CAST(N'2020-01-21T17:00:00' AS SmallDateTime), CAST(N'2020-01-21T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (313, 37, 2, CAST(N'2020-01-23T17:00:00' AS SmallDateTime), CAST(N'2020-01-23T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (314, 37, 2, CAST(N'2020-01-28T17:00:00' AS SmallDateTime), CAST(N'2020-01-28T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (315, 37, 2, CAST(N'2020-01-30T17:00:00' AS SmallDateTime), CAST(N'2020-01-30T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (316, 37, 2, CAST(N'2020-02-04T17:00:00' AS SmallDateTime), CAST(N'2020-02-04T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (317, 293, 2, CAST(N'2020-01-13T18:00:00' AS SmallDateTime), CAST(N'2020-01-13T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (318, 293, 2, CAST(N'2020-01-20T07:30:00' AS SmallDateTime), CAST(N'2020-01-20T08:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (319, 293, 2, CAST(N'2020-01-22T07:30:00' AS SmallDateTime), CAST(N'2020-01-22T08:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (320, 293, 2, CAST(N'2020-01-27T07:30:00' AS SmallDateTime), CAST(N'2020-01-27T08:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (321, 293, 2, CAST(N'2020-01-29T07:30:00' AS SmallDateTime), CAST(N'2020-01-29T08:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (322, 153, 2, CAST(N'2020-01-13T10:00:00' AS SmallDateTime), CAST(N'2020-01-13T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (323, 153, 2, CAST(N'2020-01-15T13:30:00' AS SmallDateTime), CAST(N'2020-01-15T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (324, 153, 2, CAST(N'2020-01-20T13:30:00' AS SmallDateTime), CAST(N'2020-01-20T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (325, 966, 6, CAST(N'2020-01-10T15:30:00' AS SmallDateTime), CAST(N'2020-01-10T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (326, 926, 5, CAST(N'2020-01-21T14:30:00' AS SmallDateTime), CAST(N'2020-01-21T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (327, 672, 6, CAST(N'2020-01-13T13:30:00' AS SmallDateTime), CAST(N'2020-01-13T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (328, 748, 2, CAST(N'2020-01-16T15:30:00' AS SmallDateTime), CAST(N'2020-01-16T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (329, 135, 2, CAST(N'2020-01-14T14:30:00' AS SmallDateTime), CAST(N'2020-01-14T15:10:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (330, 748, 2, CAST(N'2020-01-23T16:00:00' AS SmallDateTime), CAST(N'2020-01-23T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (331, 149, 5, CAST(N'2020-01-14T11:00:00' AS SmallDateTime), CAST(N'2020-01-14T12:20:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (332, 653, 6, CAST(N'2020-01-29T18:30:00' AS SmallDateTime), CAST(N'2020-01-29T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (333, 310, 6, CAST(N'2020-01-14T09:30:00' AS SmallDateTime), CAST(N'2020-01-14T10:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (334, 833, 2, CAST(N'2020-01-14T09:00:00' AS SmallDateTime), CAST(N'2020-01-14T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (335, 833, 2, CAST(N'2020-01-16T09:00:00' AS SmallDateTime), CAST(N'2020-01-16T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (336, 293, 2, CAST(N'2020-01-15T07:30:00' AS SmallDateTime), CAST(N'2020-01-15T08:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (337, 453, 6, CAST(N'2020-01-14T15:30:00' AS SmallDateTime), CAST(N'2020-01-14T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (338, 194, 2, CAST(N'2020-01-20T19:00:00' AS SmallDateTime), CAST(N'2020-01-20T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (339, 194, 2, CAST(N'2020-01-22T19:00:00' AS SmallDateTime), CAST(N'2020-01-22T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (340, 194, 2, CAST(N'2020-01-27T19:00:00' AS SmallDateTime), CAST(N'2020-01-27T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (341, 194, 2, CAST(N'2020-01-29T19:00:00' AS SmallDateTime), CAST(N'2020-01-29T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (342, 194, 2, CAST(N'2020-02-03T19:00:00' AS SmallDateTime), CAST(N'2020-02-03T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (343, 194, 2, CAST(N'2020-02-05T19:00:00' AS SmallDateTime), CAST(N'2020-02-05T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (344, 194, 2, CAST(N'2020-02-10T19:00:00' AS SmallDateTime), CAST(N'2020-02-10T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (345, 76, 6, CAST(N'2020-01-17T10:30:00' AS SmallDateTime), CAST(N'2020-01-17T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (346, 573, 2, CAST(N'2020-01-23T11:00:00' AS SmallDateTime), CAST(N'2020-01-23T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (347, 135, 5, CAST(N'2020-01-20T15:00:00' AS SmallDateTime), CAST(N'2020-01-20T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (348, 135, 5, CAST(N'2020-01-21T13:30:00' AS SmallDateTime), CAST(N'2020-01-21T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (349, 748, 2, CAST(N'2020-01-22T14:00:00' AS SmallDateTime), CAST(N'2020-01-22T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (350, 680, 6, CAST(N'2020-01-17T14:30:00' AS SmallDateTime), CAST(N'2020-01-17T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (351, 680, 6, CAST(N'2020-02-13T08:30:00' AS SmallDateTime), CAST(N'2020-02-13T09:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (352, 249, 5, CAST(N'2020-02-10T09:30:00' AS SmallDateTime), CAST(N'2020-02-10T10:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (353, 856, 6, CAST(N'2020-01-21T09:30:00' AS SmallDateTime), CAST(N'2020-01-21T10:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (354, 856, 6, CAST(N'2020-01-23T09:30:00' AS SmallDateTime), CAST(N'2020-01-23T10:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (355, 198, 1, CAST(N'2020-01-22T13:30:00' AS SmallDateTime), CAST(N'2020-01-22T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (356, 198, 1, CAST(N'2020-01-30T18:00:00' AS SmallDateTime), CAST(N'2020-01-30T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (357, 135, 2, CAST(N'2020-01-27T13:30:00' AS SmallDateTime), CAST(N'2020-01-27T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (358, 926, 5, CAST(N'2020-01-28T15:00:00' AS SmallDateTime), CAST(N'2020-01-28T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (359, 833, 2, CAST(N'2020-01-23T09:00:00' AS SmallDateTime), CAST(N'2020-01-23T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (360, 833, 2, CAST(N'2020-01-28T09:00:00' AS SmallDateTime), CAST(N'2020-01-28T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (361, 833, 2, CAST(N'2020-01-30T09:00:00' AS SmallDateTime), CAST(N'2020-01-30T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (362, 833, 2, CAST(N'2020-02-04T09:00:00' AS SmallDateTime), CAST(N'2020-02-04T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (363, 833, 2, CAST(N'2020-02-06T09:00:00' AS SmallDateTime), CAST(N'2020-02-06T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (364, 833, 2, CAST(N'2020-02-11T09:00:00' AS SmallDateTime), CAST(N'2020-02-11T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (365, 833, 2, CAST(N'2020-02-13T09:00:00' AS SmallDateTime), CAST(N'2020-02-13T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (366, 833, 2, CAST(N'2020-02-18T09:00:00' AS SmallDateTime), CAST(N'2020-02-18T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (367, 833, 2, CAST(N'2020-02-20T09:00:00' AS SmallDateTime), CAST(N'2020-02-20T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (368, 833, 2, CAST(N'2020-02-25T09:00:00' AS SmallDateTime), CAST(N'2020-02-25T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (369, 833, 2, CAST(N'2020-02-27T09:00:00' AS SmallDateTime), CAST(N'2020-02-27T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (370, 833, 2, CAST(N'2020-03-03T09:00:00' AS SmallDateTime), CAST(N'2020-03-03T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (371, 833, 2, CAST(N'2020-03-05T09:00:00' AS SmallDateTime), CAST(N'2020-03-05T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (372, 833, 2, CAST(N'2020-03-10T09:00:00' AS SmallDateTime), CAST(N'2020-03-10T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (373, 833, 2, CAST(N'2020-03-12T09:00:00' AS SmallDateTime), CAST(N'2020-03-12T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (374, 833, 2, CAST(N'2020-03-17T09:00:00' AS SmallDateTime), CAST(N'2020-03-17T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (375, 833, 2, CAST(N'2020-03-19T09:00:00' AS SmallDateTime), CAST(N'2020-03-19T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (376, 833, 2, CAST(N'2020-03-24T09:00:00' AS SmallDateTime), CAST(N'2020-03-24T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (377, 833, 2, CAST(N'2020-03-26T09:00:00' AS SmallDateTime), CAST(N'2020-03-26T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (378, 833, 2, CAST(N'2020-03-31T09:00:00' AS SmallDateTime), CAST(N'2020-03-31T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (379, 833, 2, CAST(N'2020-04-02T09:00:00' AS SmallDateTime), CAST(N'2020-04-02T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (380, 833, 2, CAST(N'2020-04-07T09:00:00' AS SmallDateTime), CAST(N'2020-04-07T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (381, 833, 2, CAST(N'2020-04-09T09:00:00' AS SmallDateTime), CAST(N'2020-04-09T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (382, 833, 2, CAST(N'2020-04-14T09:00:00' AS SmallDateTime), CAST(N'2020-04-14T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (383, 833, 2, CAST(N'2020-04-16T09:00:00' AS SmallDateTime), CAST(N'2020-04-16T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (384, 833, 2, CAST(N'2020-04-21T09:00:00' AS SmallDateTime), CAST(N'2020-04-21T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (385, 833, 2, CAST(N'2020-04-23T09:00:00' AS SmallDateTime), CAST(N'2020-04-23T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (386, 833, 2, CAST(N'2020-04-28T08:00:00' AS SmallDateTime), CAST(N'2020-04-28T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (387, 833, 2, CAST(N'2020-04-30T08:00:00' AS SmallDateTime), CAST(N'2020-04-30T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (388, 833, 2, CAST(N'2020-05-05T08:00:00' AS SmallDateTime), CAST(N'2020-05-05T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (389, 135, 6, CAST(N'2020-01-23T15:30:00' AS SmallDateTime), CAST(N'2020-01-23T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (390, 153, 2, CAST(N'2020-01-22T14:00:00' AS SmallDateTime), CAST(N'2020-01-22T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (391, 257, 6, CAST(N'2020-01-24T08:30:00' AS SmallDateTime), CAST(N'2020-01-24T09:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (392, 429, 6, CAST(N'2020-01-22T20:00:00' AS SmallDateTime), CAST(N'2020-01-22T21:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (393, 153, 2, CAST(N'2020-01-23T14:00:00' AS SmallDateTime), CAST(N'2020-01-23T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (394, 429, 6, CAST(N'2020-02-06T17:00:00' AS SmallDateTime), CAST(N'2020-02-06T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (395, 168, 2, CAST(N'2020-01-27T08:00:00' AS SmallDateTime), CAST(N'2020-01-27T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (396, 392, 6, CAST(N'2020-01-27T14:30:00' AS SmallDateTime), CAST(N'2020-01-27T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (397, 573, 2, CAST(N'2020-01-24T13:15:00' AS SmallDateTime), CAST(N'2020-01-24T14:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (398, 865, 6, CAST(N'2020-02-06T13:30:00' AS SmallDateTime), CAST(N'2020-02-06T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (399, 748, 2, CAST(N'2020-01-28T13:30:00' AS SmallDateTime), CAST(N'2020-01-28T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (400, 718, 2, CAST(N'2020-01-30T14:00:00' AS SmallDateTime), CAST(N'2020-01-30T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (401, 37, 5, CAST(N'2020-02-05T15:00:00' AS SmallDateTime), CAST(N'2020-02-05T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (402, 37, 5, CAST(N'2020-02-12T15:00:00' AS SmallDateTime), CAST(N'2020-02-12T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (403, 37, 5, CAST(N'2020-02-19T15:00:00' AS SmallDateTime), CAST(N'2020-02-19T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (404, 37, 5, CAST(N'2020-02-26T15:00:00' AS SmallDateTime), CAST(N'2020-02-26T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (405, 126, 1, CAST(N'2020-01-27T15:30:00' AS SmallDateTime), CAST(N'2020-01-27T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (406, 519, 6, CAST(N'2020-01-28T14:30:00' AS SmallDateTime), CAST(N'2020-01-28T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (407, 830, 6, CAST(N'2020-01-28T15:30:00' AS SmallDateTime), CAST(N'2020-01-28T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (408, 319, 6, CAST(N'2020-01-27T13:30:00' AS SmallDateTime), CAST(N'2020-01-27T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (409, 573, 2, CAST(N'2020-01-31T10:30:00' AS SmallDateTime), CAST(N'2020-01-31T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (410, 135, 2, CAST(N'2020-01-29T13:30:00' AS SmallDateTime), CAST(N'2020-01-29T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (411, 135, 2, CAST(N'2020-02-05T13:30:00' AS SmallDateTime), CAST(N'2020-02-05T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (412, 135, 2, CAST(N'2020-02-12T13:30:00' AS SmallDateTime), CAST(N'2020-02-12T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (413, 135, 2, CAST(N'2020-02-03T13:30:00' AS SmallDateTime), CAST(N'2020-02-03T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (414, 135, 2, CAST(N'2020-02-10T13:30:00' AS SmallDateTime), CAST(N'2020-02-10T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (415, 135, 2, CAST(N'2020-02-17T13:20:00' AS SmallDateTime), CAST(N'2020-02-17T14:20:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (416, 135, 2, CAST(N'2020-02-24T13:30:00' AS SmallDateTime), CAST(N'2020-02-24T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (417, 135, 2, CAST(N'2020-03-02T13:30:00' AS SmallDateTime), CAST(N'2020-03-02T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (418, 135, 2, CAST(N'2020-03-09T13:30:00' AS SmallDateTime), CAST(N'2020-03-09T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (419, 135, 2, CAST(N'2020-03-16T13:30:00' AS SmallDateTime), CAST(N'2020-03-16T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (420, 135, 2, CAST(N'2020-03-23T13:30:00' AS SmallDateTime), CAST(N'2020-03-23T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (421, 135, 2, CAST(N'2020-03-30T13:30:00' AS SmallDateTime), CAST(N'2020-03-30T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (422, 135, 2, CAST(N'2020-04-06T13:30:00' AS SmallDateTime), CAST(N'2020-04-06T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (423, 135, 2, CAST(N'2020-04-13T13:30:00' AS SmallDateTime), CAST(N'2020-04-13T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (424, 1102, 6, CAST(N'2020-01-28T09:30:00' AS SmallDateTime), CAST(N'2020-01-28T10:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (425, 926, 5, CAST(N'2020-02-04T20:00:00' AS SmallDateTime), CAST(N'2020-02-04T21:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (426, 926, 5, CAST(N'2020-02-06T20:00:00' AS SmallDateTime), CAST(N'2020-02-06T21:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (427, 833, 1, CAST(N'2020-02-03T15:30:00' AS SmallDateTime), CAST(N'2020-02-03T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (428, 194, 2, CAST(N'2020-01-30T19:00:00' AS SmallDateTime), CAST(N'2020-01-30T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (429, 168, 2, CAST(N'2020-02-03T08:00:00' AS SmallDateTime), CAST(N'2020-02-03T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (430, 699, 6, CAST(N'2020-01-30T15:30:00' AS SmallDateTime), CAST(N'2020-01-30T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (431, 718, 2, CAST(N'2020-02-04T14:00:00' AS SmallDateTime), CAST(N'2020-02-04T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (432, 198, 1, CAST(N'2020-02-13T18:00:00' AS SmallDateTime), CAST(N'2020-02-13T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (433, 807, 2, CAST(N'2020-02-04T10:30:00' AS SmallDateTime), CAST(N'2020-02-04T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (434, 180, 2, CAST(N'2020-02-03T10:00:00' AS SmallDateTime), CAST(N'2020-02-03T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (435, 180, 2, CAST(N'2020-02-06T10:00:00' AS SmallDateTime), CAST(N'2020-02-06T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (436, 180, 2, CAST(N'2020-02-10T10:00:00' AS SmallDateTime), CAST(N'2020-02-10T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (437, 180, 2, CAST(N'2020-02-13T10:00:00' AS SmallDateTime), CAST(N'2020-02-13T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (438, 180, 2, CAST(N'2020-02-17T10:00:00' AS SmallDateTime), CAST(N'2020-02-17T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (439, 180, 2, CAST(N'2020-02-20T10:00:00' AS SmallDateTime), CAST(N'2020-02-20T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (440, 180, 2, CAST(N'2020-02-24T10:00:00' AS SmallDateTime), CAST(N'2020-02-24T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (441, 180, 2, CAST(N'2020-02-27T10:00:00' AS SmallDateTime), CAST(N'2020-02-27T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (442, 180, 2, CAST(N'2020-03-02T10:00:00' AS SmallDateTime), CAST(N'2020-03-02T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (443, 180, 2, CAST(N'2020-03-05T10:00:00' AS SmallDateTime), CAST(N'2020-03-05T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (444, 180, 2, CAST(N'2020-03-09T10:00:00' AS SmallDateTime), CAST(N'2020-03-09T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (445, 180, 2, CAST(N'2020-03-12T10:00:00' AS SmallDateTime), CAST(N'2020-03-12T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (446, 180, 2, CAST(N'2020-03-16T10:00:00' AS SmallDateTime), CAST(N'2020-03-16T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (447, 180, 2, CAST(N'2020-03-19T10:00:00' AS SmallDateTime), CAST(N'2020-03-19T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (448, 180, 2, CAST(N'2020-03-23T10:00:00' AS SmallDateTime), CAST(N'2020-03-23T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (449, 180, 2, CAST(N'2020-03-26T10:00:00' AS SmallDateTime), CAST(N'2020-03-26T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (450, 180, 2, CAST(N'2020-03-30T10:00:00' AS SmallDateTime), CAST(N'2020-03-30T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (451, 180, 2, CAST(N'2020-04-02T10:00:00' AS SmallDateTime), CAST(N'2020-04-02T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (452, 180, 2, CAST(N'2020-04-06T10:00:00' AS SmallDateTime), CAST(N'2020-04-06T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (453, 180, 2, CAST(N'2020-04-09T10:00:00' AS SmallDateTime), CAST(N'2020-04-09T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (454, 180, 2, CAST(N'2020-04-13T10:00:00' AS SmallDateTime), CAST(N'2020-04-13T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (455, 180, 2, CAST(N'2020-04-16T10:00:00' AS SmallDateTime), CAST(N'2020-04-16T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (456, 180, 2, CAST(N'2020-04-20T10:00:00' AS SmallDateTime), CAST(N'2020-04-20T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (457, 180, 2, CAST(N'2020-04-23T10:00:00' AS SmallDateTime), CAST(N'2020-04-23T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (458, 180, 2, CAST(N'2020-04-27T10:00:00' AS SmallDateTime), CAST(N'2020-04-27T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (459, 180, 2, CAST(N'2020-04-30T10:00:00' AS SmallDateTime), CAST(N'2020-04-30T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (460, 591, 2, CAST(N'2020-02-10T13:30:00' AS SmallDateTime), CAST(N'2020-02-10T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (461, 591, 2, CAST(N'2020-02-12T13:30:00' AS SmallDateTime), CAST(N'2020-02-12T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (462, 591, 2, CAST(N'2020-02-17T13:30:00' AS SmallDateTime), CAST(N'2020-02-17T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (463, 591, 2, CAST(N'2020-02-19T13:30:00' AS SmallDateTime), CAST(N'2020-02-19T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (464, 591, 2, CAST(N'2020-02-24T13:30:00' AS SmallDateTime), CAST(N'2020-02-24T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (465, 591, 2, CAST(N'2020-02-26T13:30:00' AS SmallDateTime), CAST(N'2020-02-26T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (466, 591, 2, CAST(N'2020-03-02T13:30:00' AS SmallDateTime), CAST(N'2020-03-02T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (467, 591, 2, CAST(N'2020-03-04T13:30:00' AS SmallDateTime), CAST(N'2020-03-04T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (468, 591, 2, CAST(N'2020-03-09T13:30:00' AS SmallDateTime), CAST(N'2020-03-09T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (469, 591, 2, CAST(N'2020-03-11T13:30:00' AS SmallDateTime), CAST(N'2020-03-11T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (470, 591, 2, CAST(N'2020-03-16T13:30:00' AS SmallDateTime), CAST(N'2020-03-16T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (471, 591, 2, CAST(N'2020-03-18T13:30:00' AS SmallDateTime), CAST(N'2020-03-18T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (472, 591, 2, CAST(N'2020-03-23T13:30:00' AS SmallDateTime), CAST(N'2020-03-23T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (473, 591, 2, CAST(N'2020-03-25T13:30:00' AS SmallDateTime), CAST(N'2020-03-25T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (474, 591, 2, CAST(N'2020-04-06T13:30:00' AS SmallDateTime), CAST(N'2020-04-06T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (475, 591, 2, CAST(N'2020-04-13T13:30:00' AS SmallDateTime), CAST(N'2020-04-13T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (476, 429, 6, CAST(N'2020-02-10T17:00:00' AS SmallDateTime), CAST(N'2020-02-10T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (477, 145, 1, CAST(N'2020-02-03T17:00:00' AS SmallDateTime), CAST(N'2020-02-03T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (478, 712, 2, CAST(N'2020-02-05T09:00:00' AS SmallDateTime), CAST(N'2020-02-05T09:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (479, 841, 5, CAST(N'2020-02-04T11:00:00' AS SmallDateTime), CAST(N'2020-02-04T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (480, 718, 2, CAST(N'2020-02-18T10:00:00' AS SmallDateTime), CAST(N'2020-02-18T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (481, 45, 2, CAST(N'2020-02-11T10:00:00' AS SmallDateTime), CAST(N'2020-02-11T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (482, 145, 1, CAST(N'2020-02-10T17:00:00' AS SmallDateTime), CAST(N'2020-02-10T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (483, 45, 2, CAST(N'2020-02-14T09:00:00' AS SmallDateTime), CAST(N'2020-02-14T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (484, 57, 2, CAST(N'2020-02-03T11:00:00' AS SmallDateTime), CAST(N'2020-02-03T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (485, 57, 2, CAST(N'2020-02-07T11:00:00' AS SmallDateTime), CAST(N'2020-02-07T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (486, 57, 2, CAST(N'2020-02-10T11:00:00' AS SmallDateTime), CAST(N'2020-02-10T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (487, 57, 2, CAST(N'2020-02-14T11:00:00' AS SmallDateTime), CAST(N'2020-02-14T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (488, 57, 2, CAST(N'2020-02-17T10:00:00' AS SmallDateTime), CAST(N'2020-02-17T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (489, 57, 2, CAST(N'2020-02-21T10:00:00' AS SmallDateTime), CAST(N'2020-02-21T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (490, 57, 2, CAST(N'2020-02-24T11:00:00' AS SmallDateTime), CAST(N'2020-02-24T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (491, 57, 2, CAST(N'2020-02-28T11:00:00' AS SmallDateTime), CAST(N'2020-02-28T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (492, 57, 2, CAST(N'2020-03-02T11:00:00' AS SmallDateTime), CAST(N'2020-03-02T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (493, 135, 5, CAST(N'2020-02-06T10:00:00' AS SmallDateTime), CAST(N'2020-02-06T10:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (494, 37, 5, CAST(N'2020-02-04T16:00:00' AS SmallDateTime), CAST(N'2020-02-04T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (495, 748, 2, CAST(N'2020-02-13T15:00:00' AS SmallDateTime), CAST(N'2020-02-13T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (496, 718, 2, CAST(N'2020-02-10T15:00:00' AS SmallDateTime), CAST(N'2020-02-10T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (497, 718, 2, CAST(N'2020-02-13T17:30:00' AS SmallDateTime), CAST(N'2020-02-13T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (498, 293, 2, CAST(N'2020-02-13T17:00:00' AS SmallDateTime), CAST(N'2020-02-13T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (499, 865, 6, CAST(N'2020-02-06T17:00:00' AS SmallDateTime), CAST(N'2020-02-06T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (500, 37, 2, CAST(N'2020-02-11T17:00:00' AS SmallDateTime), CAST(N'2020-02-11T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (501, 37, 2, CAST(N'2020-02-18T15:30:00' AS SmallDateTime), CAST(N'2020-02-18T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (502, 37, 2, CAST(N'2020-02-25T17:00:00' AS SmallDateTime), CAST(N'2020-02-25T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (503, 54, 1, CAST(N'2020-02-07T09:00:00' AS SmallDateTime), CAST(N'2020-02-07T09:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (504, 751, 6, CAST(N'2020-02-06T13:30:00' AS SmallDateTime), CAST(N'2020-02-06T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (505, 168, 6, CAST(N'2020-02-10T13:30:00' AS SmallDateTime), CAST(N'2020-02-10T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (506, 175, 6, CAST(N'2020-02-07T08:30:00' AS SmallDateTime), CAST(N'2020-02-07T09:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (507, 135, 5, CAST(N'2020-02-13T14:00:00' AS SmallDateTime), CAST(N'2020-02-13T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (508, 152, 6, CAST(N'2020-02-06T13:30:00' AS SmallDateTime), CAST(N'2020-02-06T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (509, 945, 6, CAST(N'2020-02-07T09:30:00' AS SmallDateTime), CAST(N'2020-02-07T10:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (510, 607, 2, CAST(N'2020-02-10T19:30:00' AS SmallDateTime), CAST(N'2020-02-10T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (511, 613, 1, CAST(N'2020-02-14T11:00:00' AS SmallDateTime), CAST(N'2020-02-14T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (512, 926, 5, CAST(N'2020-02-18T19:00:00' AS SmallDateTime), CAST(N'2020-02-18T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (513, 926, 5, CAST(N'2020-02-13T20:00:00' AS SmallDateTime), CAST(N'2020-02-13T21:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (514, 54, 1, CAST(N'2020-02-21T11:30:00' AS SmallDateTime), CAST(N'2020-02-21T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (515, 54, 1, CAST(N'2020-02-28T11:30:00' AS SmallDateTime), CAST(N'2020-02-28T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (516, 54, 1, CAST(N'2020-03-06T11:30:00' AS SmallDateTime), CAST(N'2020-03-06T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (517, 54, 1, CAST(N'2020-03-13T10:30:00' AS SmallDateTime), CAST(N'2020-03-13T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (518, 54, 1, CAST(N'2020-03-20T11:30:00' AS SmallDateTime), CAST(N'2020-03-20T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (519, 54, 1, CAST(N'2020-03-27T11:30:00' AS SmallDateTime), CAST(N'2020-03-27T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (520, 54, 1, CAST(N'2020-04-03T11:30:00' AS SmallDateTime), CAST(N'2020-04-03T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (521, 54, 1, CAST(N'2020-04-10T11:30:00' AS SmallDateTime), CAST(N'2020-04-10T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (522, 54, 1, CAST(N'2020-04-17T11:30:00' AS SmallDateTime), CAST(N'2020-04-17T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (523, 54, 1, CAST(N'2020-04-24T11:30:00' AS SmallDateTime), CAST(N'2020-04-24T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (524, 54, 1, CAST(N'2020-05-01T11:30:00' AS SmallDateTime), CAST(N'2020-05-01T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (525, 54, 1, CAST(N'2020-05-08T11:30:00' AS SmallDateTime), CAST(N'2020-05-08T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (526, 979, 6, CAST(N'2020-02-10T15:30:00' AS SmallDateTime), CAST(N'2020-02-10T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (527, 1093, 6, CAST(N'2020-02-11T10:30:00' AS SmallDateTime), CAST(N'2020-02-11T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (528, 54, 1, CAST(N'2020-02-14T09:30:00' AS SmallDateTime), CAST(N'2020-02-14T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (529, 573, 2, CAST(N'2020-02-11T09:30:00' AS SmallDateTime), CAST(N'2020-02-11T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (530, 736, 6, CAST(N'2020-02-11T09:30:00' AS SmallDateTime), CAST(N'2020-02-11T10:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (531, 751, 6, CAST(N'2020-02-11T14:30:00' AS SmallDateTime), CAST(N'2020-02-11T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (532, 145, 1, CAST(N'2020-02-17T17:00:00' AS SmallDateTime), CAST(N'2020-02-17T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (533, 145, 1, CAST(N'2020-03-02T17:00:00' AS SmallDateTime), CAST(N'2020-03-02T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (534, 145, 1, CAST(N'2020-03-09T17:00:00' AS SmallDateTime), CAST(N'2020-03-09T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (535, 145, 1, CAST(N'2020-03-17T18:00:00' AS SmallDateTime), CAST(N'2020-03-17T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (536, 145, 1, CAST(N'2020-03-23T17:00:00' AS SmallDateTime), CAST(N'2020-03-23T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (537, 145, 1, CAST(N'2020-03-30T17:00:00' AS SmallDateTime), CAST(N'2020-03-30T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (538, 145, 1, CAST(N'2020-04-06T17:00:00' AS SmallDateTime), CAST(N'2020-04-06T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (539, 145, 1, CAST(N'2020-04-13T17:00:00' AS SmallDateTime), CAST(N'2020-04-13T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (540, 145, 1, CAST(N'2020-04-20T17:00:00' AS SmallDateTime), CAST(N'2020-04-20T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (541, 145, 1, CAST(N'2020-04-27T17:00:00' AS SmallDateTime), CAST(N'2020-04-27T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (542, 145, 1, CAST(N'2020-05-04T17:00:00' AS SmallDateTime), CAST(N'2020-05-04T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (543, 429, 6, CAST(N'2020-03-09T17:00:00' AS SmallDateTime), CAST(N'2020-03-09T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (544, 194, 2, CAST(N'2020-02-13T19:00:00' AS SmallDateTime), CAST(N'2020-02-13T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (545, 194, 2, CAST(N'2020-02-20T19:00:00' AS SmallDateTime), CAST(N'2020-02-20T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (546, 194, 2, CAST(N'2020-02-27T19:00:00' AS SmallDateTime), CAST(N'2020-02-27T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (547, 194, 2, CAST(N'2020-03-05T19:00:00' AS SmallDateTime), CAST(N'2020-03-05T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (548, 194, 2, CAST(N'2020-03-12T19:00:00' AS SmallDateTime), CAST(N'2020-03-12T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (549, 194, 2, CAST(N'2020-03-19T19:00:00' AS SmallDateTime), CAST(N'2020-03-19T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (550, 194, 2, CAST(N'2020-03-26T19:00:00' AS SmallDateTime), CAST(N'2020-03-26T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (551, 736, 6, CAST(N'2020-02-11T09:30:00' AS SmallDateTime), CAST(N'2020-02-11T10:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (552, 45, 2, CAST(N'2020-02-21T09:00:00' AS SmallDateTime), CAST(N'2020-02-21T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (553, 45, 2, CAST(N'2020-02-28T09:00:00' AS SmallDateTime), CAST(N'2020-02-28T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (554, 45, 2, CAST(N'2020-03-06T09:00:00' AS SmallDateTime), CAST(N'2020-03-06T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (555, 45, 2, CAST(N'2020-03-13T09:00:00' AS SmallDateTime), CAST(N'2020-03-13T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (556, 45, 2, CAST(N'2020-02-18T10:00:00' AS SmallDateTime), CAST(N'2020-02-18T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (557, 45, 2, CAST(N'2020-02-25T10:00:00' AS SmallDateTime), CAST(N'2020-02-25T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (558, 45, 2, CAST(N'2020-03-03T10:30:00' AS SmallDateTime), CAST(N'2020-03-03T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (559, 45, 2, CAST(N'2020-03-10T10:00:00' AS SmallDateTime), CAST(N'2020-03-10T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (560, 45, 2, CAST(N'2020-03-17T10:00:00' AS SmallDateTime), CAST(N'2020-03-17T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (561, 573, 2, CAST(N'2020-02-18T09:30:00' AS SmallDateTime), CAST(N'2020-02-18T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (562, 573, 2, CAST(N'2020-02-25T09:30:00' AS SmallDateTime), CAST(N'2020-02-25T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (563, 573, 2, CAST(N'2020-03-03T09:30:00' AS SmallDateTime), CAST(N'2020-03-03T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (564, 573, 2, CAST(N'2020-03-10T09:30:00' AS SmallDateTime), CAST(N'2020-03-10T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (565, 573, 2, CAST(N'2020-03-17T09:30:00' AS SmallDateTime), CAST(N'2020-03-17T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (566, 573, 2, CAST(N'2020-03-24T09:30:00' AS SmallDateTime), CAST(N'2020-03-24T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (567, 45, 1, CAST(N'2020-02-11T15:30:00' AS SmallDateTime), CAST(N'2020-02-11T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (568, 736, 6, CAST(N'2020-03-03T09:30:00' AS SmallDateTime), CAST(N'2020-03-03T10:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (569, 718, 2, CAST(N'2020-02-12T18:00:00' AS SmallDateTime), CAST(N'2020-02-12T18:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (570, 573, 2, CAST(N'2020-02-13T17:30:00' AS SmallDateTime), CAST(N'2020-02-13T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (571, 502, 5, CAST(N'2020-02-19T11:00:00' AS SmallDateTime), CAST(N'2020-02-19T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (572, 198, 1, CAST(N'2020-02-12T18:00:00' AS SmallDateTime), CAST(N'2020-02-12T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (573, 198, 1, CAST(N'2020-02-18T18:00:00' AS SmallDateTime), CAST(N'2020-02-18T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (574, 249, 1, CAST(N'2020-02-12T16:30:00' AS SmallDateTime), CAST(N'2020-02-12T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (575, 680, 6, CAST(N'2020-02-17T14:30:00' AS SmallDateTime), CAST(N'2020-02-17T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (576, 718, 2, CAST(N'2020-02-20T14:30:00' AS SmallDateTime), CAST(N'2020-02-20T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (577, 135, 5, CAST(N'2020-02-18T15:00:00' AS SmallDateTime), CAST(N'2020-02-18T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (578, 952, 6, CAST(N'2020-02-14T08:30:00' AS SmallDateTime), CAST(N'2020-02-14T09:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (579, 135, 5, CAST(N'2020-02-17T14:30:00' AS SmallDateTime), CAST(N'2020-02-17T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (580, 135, 5, CAST(N'2020-02-20T09:00:00' AS SmallDateTime), CAST(N'2020-02-20T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (581, 135, 5, CAST(N'2020-03-05T10:00:00' AS SmallDateTime), CAST(N'2020-03-05T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (582, 135, 5, CAST(N'2020-03-19T10:00:00' AS SmallDateTime), CAST(N'2020-03-19T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (583, 135, 5, CAST(N'2020-04-02T10:00:00' AS SmallDateTime), CAST(N'2020-04-02T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (584, 135, 5, CAST(N'2020-04-16T10:00:00' AS SmallDateTime), CAST(N'2020-04-16T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (585, 135, 5, CAST(N'2020-04-30T10:00:00' AS SmallDateTime), CAST(N'2020-04-30T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (586, 135, 5, CAST(N'2020-05-14T10:00:00' AS SmallDateTime), CAST(N'2020-05-14T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (587, 135, 5, CAST(N'2020-05-28T10:00:00' AS SmallDateTime), CAST(N'2020-05-28T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (588, 249, 1, CAST(N'2020-02-18T17:00:00' AS SmallDateTime), CAST(N'2020-02-18T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (589, 249, 1, CAST(N'2020-03-03T17:00:00' AS SmallDateTime), CAST(N'2020-03-03T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (590, 249, 1, CAST(N'2020-03-10T17:00:00' AS SmallDateTime), CAST(N'2020-03-10T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (591, 86, 1, CAST(N'2020-02-17T14:30:00' AS SmallDateTime), CAST(N'2020-02-17T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (592, 952, 6, CAST(N'2020-02-18T09:30:00' AS SmallDateTime), CAST(N'2020-02-18T10:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (593, 310, 6, CAST(N'2020-02-18T14:00:00' AS SmallDateTime), CAST(N'2020-02-18T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (594, 573, 2, CAST(N'2020-02-20T17:30:00' AS SmallDateTime), CAST(N'2020-02-20T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (595, 573, 2, CAST(N'2020-02-27T17:30:00' AS SmallDateTime), CAST(N'2020-02-27T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (596, 152, 6, CAST(N'2020-02-17T15:30:00' AS SmallDateTime), CAST(N'2020-02-17T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (597, 748, 2, CAST(N'2020-02-21T11:00:00' AS SmallDateTime), CAST(N'2020-02-21T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (598, 135, 2, CAST(N'2020-02-19T13:30:00' AS SmallDateTime), CAST(N'2020-02-19T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (599, 135, 2, CAST(N'2020-02-26T13:30:00' AS SmallDateTime), CAST(N'2020-02-26T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (600, 135, 2, CAST(N'2020-03-04T13:30:00' AS SmallDateTime), CAST(N'2020-03-04T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (601, 135, 2, CAST(N'2020-03-11T13:30:00' AS SmallDateTime), CAST(N'2020-03-11T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (602, 135, 2, CAST(N'2020-03-18T13:30:00' AS SmallDateTime), CAST(N'2020-03-18T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (603, 135, 2, CAST(N'2020-03-25T13:30:00' AS SmallDateTime), CAST(N'2020-03-25T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (604, 135, 2, CAST(N'2020-04-01T13:30:00' AS SmallDateTime), CAST(N'2020-04-01T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (605, 1045, 6, CAST(N'2020-02-20T15:30:00' AS SmallDateTime), CAST(N'2020-02-20T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (606, 282, 6, CAST(N'2020-02-18T13:00:00' AS SmallDateTime), CAST(N'2020-02-18T14:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (607, 93, 1, CAST(N'2020-02-21T13:30:00' AS SmallDateTime), CAST(N'2020-02-21T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (608, 952, 6, CAST(N'2020-03-02T15:00:00' AS SmallDateTime), CAST(N'2020-03-02T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (609, 607, 2, CAST(N'2020-02-21T13:30:00' AS SmallDateTime), CAST(N'2020-02-21T14:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (610, 573, 2, CAST(N'2020-02-19T18:00:00' AS SmallDateTime), CAST(N'2020-02-19T18:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (611, 718, 2, CAST(N'2020-02-26T13:30:00' AS SmallDateTime), CAST(N'2020-02-26T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (612, 926, 5, CAST(N'2020-02-20T19:00:00' AS SmallDateTime), CAST(N'2020-02-20T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (613, 926, 5, CAST(N'2020-03-03T19:00:00' AS SmallDateTime), CAST(N'2020-03-03T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (614, 926, 5, CAST(N'2020-03-05T19:00:00' AS SmallDateTime), CAST(N'2020-03-05T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (615, 926, 5, CAST(N'2020-03-10T19:00:00' AS SmallDateTime), CAST(N'2020-03-10T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (616, 926, 5, CAST(N'2020-03-12T19:00:00' AS SmallDateTime), CAST(N'2020-03-12T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (617, 926, 5, CAST(N'2020-03-19T19:00:00' AS SmallDateTime), CAST(N'2020-03-19T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (618, 926, 5, CAST(N'2020-03-24T19:00:00' AS SmallDateTime), CAST(N'2020-03-24T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (619, 926, 5, CAST(N'2020-03-26T19:00:00' AS SmallDateTime), CAST(N'2020-03-26T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (620, 926, 5, CAST(N'2020-03-31T19:00:00' AS SmallDateTime), CAST(N'2020-03-31T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (621, 926, 5, CAST(N'2020-04-02T19:00:00' AS SmallDateTime), CAST(N'2020-04-02T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (622, 926, 5, CAST(N'2020-04-07T19:00:00' AS SmallDateTime), CAST(N'2020-04-07T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (623, 926, 5, CAST(N'2020-04-09T19:00:00' AS SmallDateTime), CAST(N'2020-04-09T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (624, 926, 5, CAST(N'2020-04-16T19:00:00' AS SmallDateTime), CAST(N'2020-04-16T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (625, 926, 5, CAST(N'2020-04-21T19:00:00' AS SmallDateTime), CAST(N'2020-04-21T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (626, 926, 5, CAST(N'2020-04-23T19:00:00' AS SmallDateTime), CAST(N'2020-04-23T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (627, 926, 5, CAST(N'2020-04-28T19:00:00' AS SmallDateTime), CAST(N'2020-04-28T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (628, 926, 5, CAST(N'2020-04-30T19:00:00' AS SmallDateTime), CAST(N'2020-04-30T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (629, 926, 5, CAST(N'2020-05-05T19:00:00' AS SmallDateTime), CAST(N'2020-05-05T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (630, 926, 5, CAST(N'2020-05-07T19:00:00' AS SmallDateTime), CAST(N'2020-05-07T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (631, 926, 5, CAST(N'2020-05-19T19:00:00' AS SmallDateTime), CAST(N'2020-05-19T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (632, 926, 5, CAST(N'2020-05-26T19:00:00' AS SmallDateTime), CAST(N'2020-05-26T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (633, 926, 5, CAST(N'2020-05-28T19:00:00' AS SmallDateTime), CAST(N'2020-05-28T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (634, 282, 6, CAST(N'2020-03-06T08:30:00' AS SmallDateTime), CAST(N'2020-03-06T09:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (635, 502, 5, CAST(N'2020-03-17T17:00:00' AS SmallDateTime), CAST(N'2020-03-17T17:15:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (636, 502, 5, CAST(N'2020-02-26T11:00:00' AS SmallDateTime), CAST(N'2020-02-26T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (637, 37, 5, CAST(N'2020-03-06T17:00:00' AS SmallDateTime), CAST(N'2020-03-06T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (638, 37, 5, CAST(N'2020-03-13T17:30:00' AS SmallDateTime), CAST(N'2020-03-13T18:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (639, 37, 5, CAST(N'2020-03-20T17:30:00' AS SmallDateTime), CAST(N'2020-03-20T18:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (640, 37, 5, CAST(N'2020-03-27T17:30:00' AS SmallDateTime), CAST(N'2020-03-27T18:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (641, 37, 5, CAST(N'2020-04-03T17:30:00' AS SmallDateTime), CAST(N'2020-04-03T18:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (642, 37, 5, CAST(N'2020-04-17T17:30:00' AS SmallDateTime), CAST(N'2020-04-17T18:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (643, 37, 5, CAST(N'2020-04-24T17:30:00' AS SmallDateTime), CAST(N'2020-04-24T18:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (644, 641, 6, CAST(N'2020-02-20T13:30:00' AS SmallDateTime), CAST(N'2020-02-20T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (645, 573, 2, CAST(N'2020-02-26T18:00:00' AS SmallDateTime), CAST(N'2020-02-26T18:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (646, 135, 2, CAST(N'2020-02-28T14:30:00' AS SmallDateTime), CAST(N'2020-02-28T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (647, 93, 1, CAST(N'2020-02-28T14:30:00' AS SmallDateTime), CAST(N'2020-02-28T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (648, 93, 1, CAST(N'2020-03-06T14:30:00' AS SmallDateTime), CAST(N'2020-03-06T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (649, 93, 1, CAST(N'2020-03-13T14:30:00' AS SmallDateTime), CAST(N'2020-03-13T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (650, 93, 1, CAST(N'2020-03-20T14:30:00' AS SmallDateTime), CAST(N'2020-03-20T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (651, 93, 1, CAST(N'2020-03-27T14:30:00' AS SmallDateTime), CAST(N'2020-03-27T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (652, 93, 1, CAST(N'2020-04-03T14:30:00' AS SmallDateTime), CAST(N'2020-04-03T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (653, 93, 1, CAST(N'2020-04-10T14:30:00' AS SmallDateTime), CAST(N'2020-04-10T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (654, 93, 1, CAST(N'2020-04-17T14:30:00' AS SmallDateTime), CAST(N'2020-04-17T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (655, 93, 1, CAST(N'2020-04-24T15:00:00' AS SmallDateTime), CAST(N'2020-04-24T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (656, 93, 1, CAST(N'2020-05-01T14:30:00' AS SmallDateTime), CAST(N'2020-05-01T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (657, 93, 1, CAST(N'2020-05-08T15:00:00' AS SmallDateTime), CAST(N'2020-05-08T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (658, 153, 2, CAST(N'2020-02-28T09:00:00' AS SmallDateTime), CAST(N'2020-02-28T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (659, 722, 2, CAST(N'2020-03-04T15:00:00' AS SmallDateTime), CAST(N'2020-03-04T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (660, 722, 2, CAST(N'2020-03-09T15:30:00' AS SmallDateTime), CAST(N'2020-03-09T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (661, 722, 2, CAST(N'2020-03-11T15:30:00' AS SmallDateTime), CAST(N'2020-03-11T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (662, 722, 2, CAST(N'2020-03-16T15:30:00' AS SmallDateTime), CAST(N'2020-03-16T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (663, 722, 2, CAST(N'2020-03-18T15:30:00' AS SmallDateTime), CAST(N'2020-03-18T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (664, 722, 2, CAST(N'2020-03-23T15:30:00' AS SmallDateTime), CAST(N'2020-03-23T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (665, 722, 2, CAST(N'2020-03-25T15:30:00' AS SmallDateTime), CAST(N'2020-03-25T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (666, 722, 2, CAST(N'2020-03-30T15:30:00' AS SmallDateTime), CAST(N'2020-03-30T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (667, 722, 2, CAST(N'2020-04-06T15:30:00' AS SmallDateTime), CAST(N'2020-04-06T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (668, 722, 2, CAST(N'2020-04-13T15:30:00' AS SmallDateTime), CAST(N'2020-04-13T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (669, 502, 5, CAST(N'2020-03-04T09:30:00' AS SmallDateTime), CAST(N'2020-03-04T10:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (670, 502, 5, CAST(N'2020-03-12T11:00:00' AS SmallDateTime), CAST(N'2020-03-12T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (671, 718, 2, CAST(N'2020-03-03T14:00:00' AS SmallDateTime), CAST(N'2020-03-03T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (672, 841, 5, CAST(N'2020-03-02T16:00:00' AS SmallDateTime), CAST(N'2020-03-02T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (673, 856, 6, CAST(N'2020-03-03T13:30:00' AS SmallDateTime), CAST(N'2020-03-03T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (674, 573, 2, CAST(N'2020-03-04T18:00:00' AS SmallDateTime), CAST(N'2020-03-04T18:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (675, 573, 2, CAST(N'2020-03-11T18:00:00' AS SmallDateTime), CAST(N'2020-03-11T18:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (676, 573, 2, CAST(N'2020-03-18T18:00:00' AS SmallDateTime), CAST(N'2020-03-18T18:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (677, 573, 2, CAST(N'2020-03-25T18:00:00' AS SmallDateTime), CAST(N'2020-03-25T18:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (678, 573, 2, CAST(N'2020-04-01T18:00:00' AS SmallDateTime), CAST(N'2020-04-01T18:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (679, 573, 5, CAST(N'2020-03-04T18:30:00' AS SmallDateTime), CAST(N'2020-03-04T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (680, 573, 5, CAST(N'2020-03-11T18:30:00' AS SmallDateTime), CAST(N'2020-03-11T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (681, 573, 5, CAST(N'2020-03-18T18:30:00' AS SmallDateTime), CAST(N'2020-03-18T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (682, 573, 5, CAST(N'2020-03-25T18:30:00' AS SmallDateTime), CAST(N'2020-03-25T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (683, 573, 5, CAST(N'2020-04-01T18:30:00' AS SmallDateTime), CAST(N'2020-04-01T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (684, 573, 5, CAST(N'2020-04-08T18:30:00' AS SmallDateTime), CAST(N'2020-04-08T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (685, 573, 5, CAST(N'2020-04-15T18:30:00' AS SmallDateTime), CAST(N'2020-04-15T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (686, 573, 5, CAST(N'2020-04-22T18:30:00' AS SmallDateTime), CAST(N'2020-04-22T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (687, 573, 5, CAST(N'2020-04-29T18:30:00' AS SmallDateTime), CAST(N'2020-04-29T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (688, 573, 5, CAST(N'2020-05-06T18:30:00' AS SmallDateTime), CAST(N'2020-05-06T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (689, 573, 5, CAST(N'2020-05-13T18:30:00' AS SmallDateTime), CAST(N'2020-05-13T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (690, 573, 5, CAST(N'2020-05-20T18:30:00' AS SmallDateTime), CAST(N'2020-05-20T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (691, 573, 5, CAST(N'2020-05-27T18:30:00' AS SmallDateTime), CAST(N'2020-05-27T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (692, 286, 4, CAST(N'2020-02-28T09:00:00' AS SmallDateTime), CAST(N'2020-02-28T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (693, 286, 4, CAST(N'2020-03-06T09:00:00' AS SmallDateTime), CAST(N'2020-03-06T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (694, 286, 4, CAST(N'2020-03-13T09:00:00' AS SmallDateTime), CAST(N'2020-03-13T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (695, 286, 4, CAST(N'2020-03-20T09:00:00' AS SmallDateTime), CAST(N'2020-03-20T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (696, 286, 4, CAST(N'2020-03-27T09:00:00' AS SmallDateTime), CAST(N'2020-03-27T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (697, 286, 4, CAST(N'2020-04-03T09:00:00' AS SmallDateTime), CAST(N'2020-04-03T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (698, 286, 4, CAST(N'2020-04-10T09:00:00' AS SmallDateTime), CAST(N'2020-04-10T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (699, 286, 4, CAST(N'2020-04-17T09:00:00' AS SmallDateTime), CAST(N'2020-04-17T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (700, 286, 4, CAST(N'2020-04-24T09:00:00' AS SmallDateTime), CAST(N'2020-04-24T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (701, 286, 4, CAST(N'2020-05-01T09:00:00' AS SmallDateTime), CAST(N'2020-05-01T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (702, 286, 4, CAST(N'2020-05-08T09:00:00' AS SmallDateTime), CAST(N'2020-05-08T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (703, 286, 4, CAST(N'2020-05-15T09:00:00' AS SmallDateTime), CAST(N'2020-05-15T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (704, 286, 4, CAST(N'2020-05-22T09:00:00' AS SmallDateTime), CAST(N'2020-05-22T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (705, 286, 4, CAST(N'2020-05-29T09:00:00' AS SmallDateTime), CAST(N'2020-05-29T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (706, 93, 6, CAST(N'2020-03-06T14:30:00' AS SmallDateTime), CAST(N'2020-03-06T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (707, 712, 2, CAST(N'2020-03-04T15:00:00' AS SmallDateTime), CAST(N'2020-03-04T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (708, 153, 2, CAST(N'2020-03-03T10:00:00' AS SmallDateTime), CAST(N'2020-03-03T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (709, 194, 2, CAST(N'2020-03-16T19:00:00' AS SmallDateTime), CAST(N'2020-03-16T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (710, 194, 2, CAST(N'2020-03-02T19:00:00' AS SmallDateTime), CAST(N'2020-03-02T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (711, 135, 2, CAST(N'2020-03-05T14:30:00' AS SmallDateTime), CAST(N'2020-03-05T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (712, 748, 2, CAST(N'2020-03-02T14:30:00' AS SmallDateTime), CAST(N'2020-03-02T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (713, 153, 2, CAST(N'2020-03-02T14:30:00' AS SmallDateTime), CAST(N'2020-03-02T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (714, 573, 2, CAST(N'2020-03-02T17:00:00' AS SmallDateTime), CAST(N'2020-03-02T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (715, 175, 2, CAST(N'2020-03-03T10:00:00' AS SmallDateTime), CAST(N'2020-03-03T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (716, 175, 2, CAST(N'2020-03-10T10:00:00' AS SmallDateTime), CAST(N'2020-03-10T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (717, 934, 6, CAST(N'2020-03-05T13:30:00' AS SmallDateTime), CAST(N'2020-03-05T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (718, 1048, 6, CAST(N'2020-03-09T13:30:00' AS SmallDateTime), CAST(N'2020-03-09T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (719, 57, 4, CAST(N'2020-03-06T06:15:00' AS SmallDateTime), CAST(N'2020-03-06T07:15:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (720, 57, 2, CAST(N'2020-03-13T07:00:00' AS SmallDateTime), CAST(N'2020-03-13T08:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (721, 57, 2, CAST(N'2020-03-20T07:00:00' AS SmallDateTime), CAST(N'2020-03-20T08:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (722, 57, 2, CAST(N'2020-03-27T07:00:00' AS SmallDateTime), CAST(N'2020-03-27T08:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (723, 57, 4, CAST(N'2020-04-03T07:00:00' AS SmallDateTime), CAST(N'2020-04-03T08:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (724, 57, 4, CAST(N'2020-04-10T07:00:00' AS SmallDateTime), CAST(N'2020-04-10T08:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (725, 57, 4, CAST(N'2020-04-17T07:00:00' AS SmallDateTime), CAST(N'2020-04-17T08:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (726, 57, 4, CAST(N'2020-04-24T07:00:00' AS SmallDateTime), CAST(N'2020-04-24T08:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (727, 57, 2, CAST(N'2020-05-01T08:00:00' AS SmallDateTime), CAST(N'2020-05-01T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (728, 57, 4, CAST(N'2020-05-08T07:00:00' AS SmallDateTime), CAST(N'2020-05-08T08:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (729, 57, 4, CAST(N'2020-05-15T07:00:00' AS SmallDateTime), CAST(N'2020-05-15T08:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (730, 57, 4, CAST(N'2020-05-29T07:00:00' AS SmallDateTime), CAST(N'2020-05-29T08:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (731, 57, 4, CAST(N'2020-06-05T07:00:00' AS SmallDateTime), CAST(N'2020-06-05T08:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (732, 57, 4, CAST(N'2020-06-12T07:00:00' AS SmallDateTime), CAST(N'2020-06-12T08:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (733, 57, 2, CAST(N'2020-03-09T11:00:00' AS SmallDateTime), CAST(N'2020-03-09T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (734, 57, 2, CAST(N'2020-03-16T11:00:00' AS SmallDateTime), CAST(N'2020-03-16T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (735, 57, 2, CAST(N'2020-03-23T11:00:00' AS SmallDateTime), CAST(N'2020-03-23T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (736, 57, 2, CAST(N'2020-03-30T11:00:00' AS SmallDateTime), CAST(N'2020-03-30T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (737, 57, 2, CAST(N'2020-04-06T11:00:00' AS SmallDateTime), CAST(N'2020-04-06T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (738, 57, 2, CAST(N'2020-04-13T11:00:00' AS SmallDateTime), CAST(N'2020-04-13T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (739, 57, 2, CAST(N'2020-04-20T11:00:00' AS SmallDateTime), CAST(N'2020-04-20T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (740, 57, 2, CAST(N'2020-04-27T11:00:00' AS SmallDateTime), CAST(N'2020-04-27T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (741, 57, 2, CAST(N'2020-05-04T11:00:00' AS SmallDateTime), CAST(N'2020-05-04T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (742, 57, 2, CAST(N'2020-05-11T11:00:00' AS SmallDateTime), CAST(N'2020-05-11T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (743, 57, 2, CAST(N'2020-05-18T11:00:00' AS SmallDateTime), CAST(N'2020-05-18T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (744, 135, 2, CAST(N'2020-03-12T14:30:00' AS SmallDateTime), CAST(N'2020-03-12T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (745, 153, 2, CAST(N'2020-03-05T14:30:00' AS SmallDateTime), CAST(N'2020-03-05T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (746, 748, 2, CAST(N'2020-03-05T09:30:00' AS SmallDateTime), CAST(N'2020-03-05T10:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (747, 748, 2, CAST(N'2020-03-10T10:00:00' AS SmallDateTime), CAST(N'2020-03-10T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (748, 748, 2, CAST(N'2020-03-17T10:00:00' AS SmallDateTime), CAST(N'2020-03-17T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (749, 748, 2, CAST(N'2020-03-24T10:00:00' AS SmallDateTime), CAST(N'2020-03-24T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (750, 145, 1, CAST(N'2020-03-06T14:30:00' AS SmallDateTime), CAST(N'2020-03-06T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (751, 607, 2, CAST(N'2020-03-03T11:30:00' AS SmallDateTime), CAST(N'2020-03-03T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (752, 841, 5, CAST(N'2020-03-09T13:30:00' AS SmallDateTime), CAST(N'2020-03-09T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (753, 61, 1, CAST(N'2020-03-02T18:00:00' AS SmallDateTime), CAST(N'2020-03-02T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (754, 573, 2, CAST(N'2020-03-13T16:00:00' AS SmallDateTime), CAST(N'2020-03-13T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (755, 61, 1, CAST(N'2020-03-16T18:00:00' AS SmallDateTime), CAST(N'2020-03-16T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (756, 61, 1, CAST(N'2020-03-30T18:00:00' AS SmallDateTime), CAST(N'2020-03-30T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (757, 61, 1, CAST(N'2020-04-13T18:00:00' AS SmallDateTime), CAST(N'2020-04-13T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (758, 61, 1, CAST(N'2020-04-27T18:00:00' AS SmallDateTime), CAST(N'2020-04-27T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (759, 61, 1, CAST(N'2020-05-11T18:00:00' AS SmallDateTime), CAST(N'2020-05-11T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (760, 856, 6, CAST(N'2020-03-09T14:30:00' AS SmallDateTime), CAST(N'2020-03-09T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (761, 198, 1, CAST(N'2020-03-10T19:00:00' AS SmallDateTime), CAST(N'2020-03-10T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (762, 45, 2, CAST(N'2020-03-05T09:30:00' AS SmallDateTime), CAST(N'2020-03-05T10:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (763, 718, 2, CAST(N'2020-03-12T14:30:00' AS SmallDateTime), CAST(N'2020-03-12T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (764, 591, 4, CAST(N'2020-03-06T09:00:00' AS SmallDateTime), CAST(N'2020-03-06T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (765, 161, 1, CAST(N'2020-03-10T20:00:00' AS SmallDateTime), CAST(N'2020-03-10T21:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (766, 722, 2, CAST(N'2020-03-13T14:00:00' AS SmallDateTime), CAST(N'2020-03-13T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (767, 573, 5, CAST(N'2020-03-13T16:30:00' AS SmallDateTime), CAST(N'2020-03-13T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (768, 748, 2, CAST(N'2020-03-12T10:00:00' AS SmallDateTime), CAST(N'2020-03-12T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (769, 748, 2, CAST(N'2020-03-11T15:30:00' AS SmallDateTime), CAST(N'2020-03-11T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (770, 766, 6, CAST(N'2020-03-05T17:00:00' AS SmallDateTime), CAST(N'2020-03-05T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (771, 45, 2, CAST(N'2020-03-19T11:00:00' AS SmallDateTime), CAST(N'2020-03-19T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (772, 282, 6, CAST(N'2020-03-20T08:30:00' AS SmallDateTime), CAST(N'2020-03-20T09:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (773, 591, 4, CAST(N'2020-03-13T09:00:00' AS SmallDateTime), CAST(N'2020-03-13T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (774, 934, 6, CAST(N'2020-03-10T15:30:00' AS SmallDateTime), CAST(N'2020-03-10T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (775, 952, 6, CAST(N'2020-03-10T14:30:00' AS SmallDateTime), CAST(N'2020-03-10T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (776, 93, 6, CAST(N'2020-03-06T14:30:00' AS SmallDateTime), CAST(N'2020-03-06T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (777, 1045, 6, CAST(N'2020-03-12T13:30:00' AS SmallDateTime), CAST(N'2020-03-12T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (778, 45, 1, CAST(N'2020-03-10T15:30:00' AS SmallDateTime), CAST(N'2020-03-10T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (779, 194, 2, CAST(N'2020-03-09T19:00:00' AS SmallDateTime), CAST(N'2020-03-09T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (780, 194, 2, CAST(N'2020-03-23T19:00:00' AS SmallDateTime), CAST(N'2020-03-23T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (781, 194, 2, CAST(N'2020-03-30T19:00:00' AS SmallDateTime), CAST(N'2020-03-30T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (782, 194, 2, CAST(N'2020-04-06T19:00:00' AS SmallDateTime), CAST(N'2020-04-06T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (783, 194, 2, CAST(N'2020-04-13T19:00:00' AS SmallDateTime), CAST(N'2020-04-13T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (784, 194, 2, CAST(N'2020-04-20T19:00:00' AS SmallDateTime), CAST(N'2020-04-20T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (785, 194, 2, CAST(N'2020-04-27T19:00:00' AS SmallDateTime), CAST(N'2020-04-27T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (786, 590, 6, CAST(N'2020-03-09T18:00:00' AS SmallDateTime), CAST(N'2020-03-09T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (787, 86, 6, CAST(N'2020-03-12T17:00:00' AS SmallDateTime), CAST(N'2020-03-12T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (788, 590, 6, CAST(N'2020-03-16T17:00:00' AS SmallDateTime), CAST(N'2020-03-16T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (789, 299, 2, CAST(N'2020-03-11T07:00:00' AS SmallDateTime), CAST(N'2020-03-11T08:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (790, 607, 2, CAST(N'2020-03-12T19:00:00' AS SmallDateTime), CAST(N'2020-03-12T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (791, 1048, 6, CAST(N'2020-03-10T10:30:00' AS SmallDateTime), CAST(N'2020-03-10T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (792, 153, 2, CAST(N'2020-03-16T14:30:00' AS SmallDateTime), CAST(N'2020-03-16T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (793, 153, 2, CAST(N'2020-03-13T09:00:00' AS SmallDateTime), CAST(N'2020-03-13T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (794, 841, 5, CAST(N'2020-03-16T13:30:00' AS SmallDateTime), CAST(N'2020-03-16T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (795, 645, 5, CAST(N'2020-03-11T09:00:00' AS SmallDateTime), CAST(N'2020-03-11T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (796, 1048, 6, CAST(N'2020-03-24T10:30:00' AS SmallDateTime), CAST(N'2020-03-24T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (797, 86, 6, CAST(N'2020-03-16T15:30:00' AS SmallDateTime), CAST(N'2020-03-16T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (798, 952, 6, CAST(N'2020-03-24T14:30:00' AS SmallDateTime), CAST(N'2020-03-24T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (799, 45, 1, CAST(N'2020-03-20T10:30:00' AS SmallDateTime), CAST(N'2020-03-20T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (800, 934, 6, CAST(N'2020-03-24T15:30:00' AS SmallDateTime), CAST(N'2020-03-24T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (801, 34, 5, CAST(N'2020-03-20T14:00:00' AS SmallDateTime), CAST(N'2020-03-20T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (802, 748, 2, CAST(N'2020-03-19T10:00:00' AS SmallDateTime), CAST(N'2020-03-19T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (803, 748, 2, CAST(N'2020-03-26T10:00:00' AS SmallDateTime), CAST(N'2020-03-26T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (804, 613, 1, CAST(N'2020-03-12T19:00:00' AS SmallDateTime), CAST(N'2020-03-12T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (805, 748, 2, CAST(N'2020-03-13T14:00:00' AS SmallDateTime), CAST(N'2020-03-13T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (806, 856, 6, CAST(N'2020-03-17T08:30:00' AS SmallDateTime), CAST(N'2020-03-17T09:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (807, 286, 4, CAST(N'2020-03-16T16:30:00' AS SmallDateTime), CAST(N'2020-03-16T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (808, 135, 5, CAST(N'2020-03-24T13:30:00' AS SmallDateTime), CAST(N'2020-03-24T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (809, 161, 1, CAST(N'2020-03-25T18:00:00' AS SmallDateTime), CAST(N'2020-03-25T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (810, 962, 6, CAST(N'2020-03-16T13:30:00' AS SmallDateTime), CAST(N'2020-03-16T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (811, 590, 6, CAST(N'2020-03-19T14:30:00' AS SmallDateTime), CAST(N'2020-03-19T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (812, 194, 2, CAST(N'2020-03-24T19:00:00' AS SmallDateTime), CAST(N'2020-03-24T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (813, 149, 5, CAST(N'2020-04-14T18:00:00' AS SmallDateTime), CAST(N'2020-04-14T19:20:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (814, 748, 2, CAST(N'2020-03-19T15:00:00' AS SmallDateTime), CAST(N'2020-03-19T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (815, 712, 2, CAST(N'2020-03-24T14:30:00' AS SmallDateTime), CAST(N'2020-03-24T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (816, 153, 2, CAST(N'2020-03-24T15:30:00' AS SmallDateTime), CAST(N'2020-03-24T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (817, 153, 2, CAST(N'2020-03-26T15:00:00' AS SmallDateTime), CAST(N'2020-03-26T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (818, 718, 2, CAST(N'2020-03-31T14:00:00' AS SmallDateTime), CAST(N'2020-03-31T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (819, 712, 2, CAST(N'2020-03-31T16:30:00' AS SmallDateTime), CAST(N'2020-03-31T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (820, 135, 2, CAST(N'2020-04-02T13:30:00' AS SmallDateTime), CAST(N'2020-04-02T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (821, 135, 2, CAST(N'2020-04-07T13:30:00' AS SmallDateTime), CAST(N'2020-04-07T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (822, 712, 2, CAST(N'2020-04-06T14:00:00' AS SmallDateTime), CAST(N'2020-04-06T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (823, 712, 2, CAST(N'2020-04-07T18:00:00' AS SmallDateTime), CAST(N'2020-04-07T18:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (824, 169, 2, CAST(N'2020-04-09T11:00:00' AS SmallDateTime), CAST(N'2020-04-09T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (825, 712, 2, CAST(N'2020-04-09T19:00:00' AS SmallDateTime), CAST(N'2020-04-09T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (826, 573, 2, CAST(N'2020-04-06T18:15:00' AS SmallDateTime), CAST(N'2020-04-06T18:45:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (827, 722, 2, CAST(N'2020-04-07T15:00:00' AS SmallDateTime), CAST(N'2020-04-07T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (828, 145, 1, CAST(N'2020-04-09T13:30:00' AS SmallDateTime), CAST(N'2020-04-09T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (829, 718, 2, CAST(N'2020-04-07T14:30:00' AS SmallDateTime), CAST(N'2020-04-07T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (830, 573, 2, CAST(N'2020-04-07T18:30:00' AS SmallDateTime), CAST(N'2020-04-07T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (831, 293, 2, CAST(N'2020-04-07T16:30:00' AS SmallDateTime), CAST(N'2020-04-07T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (832, 135, 2, CAST(N'2020-04-09T13:30:00' AS SmallDateTime), CAST(N'2020-04-09T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (833, 135, 2, CAST(N'2020-04-16T13:30:00' AS SmallDateTime), CAST(N'2020-04-16T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (834, 135, 2, CAST(N'2020-04-21T13:30:00' AS SmallDateTime), CAST(N'2020-04-21T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (835, 135, 2, CAST(N'2020-04-23T13:30:00' AS SmallDateTime), CAST(N'2020-04-23T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (836, 135, 2, CAST(N'2020-04-28T13:30:00' AS SmallDateTime), CAST(N'2020-04-28T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (837, 135, 2, CAST(N'2020-04-30T13:30:00' AS SmallDateTime), CAST(N'2020-04-30T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (838, 135, 2, CAST(N'2020-05-05T13:30:00' AS SmallDateTime), CAST(N'2020-05-05T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (839, 135, 2, CAST(N'2020-05-07T13:30:00' AS SmallDateTime), CAST(N'2020-05-07T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (840, 135, 2, CAST(N'2020-05-12T13:10:00' AS SmallDateTime), CAST(N'2020-05-12T14:10:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (841, 180, 1, CAST(N'2020-04-14T13:30:00' AS SmallDateTime), CAST(N'2020-04-14T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (842, 722, 2, CAST(N'2020-04-09T09:00:00' AS SmallDateTime), CAST(N'2020-04-09T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (843, 293, 2, CAST(N'2020-04-13T15:00:00' AS SmallDateTime), CAST(N'2020-04-13T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (844, 722, 2, CAST(N'2020-04-14T14:30:00' AS SmallDateTime), CAST(N'2020-04-14T15:15:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (845, 169, 2, CAST(N'2020-04-16T10:00:00' AS SmallDateTime), CAST(N'2020-04-16T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (846, 573, 2, CAST(N'2020-04-09T18:30:00' AS SmallDateTime), CAST(N'2020-04-09T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (847, 573, 2, CAST(N'2020-04-13T18:30:00' AS SmallDateTime), CAST(N'2020-04-13T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (848, 126, 1, CAST(N'2020-04-13T13:30:00' AS SmallDateTime), CAST(N'2020-04-13T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (849, 293, 2, CAST(N'2020-04-20T15:00:00' AS SmallDateTime), CAST(N'2020-04-20T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (850, 293, 2, CAST(N'2020-04-27T15:00:00' AS SmallDateTime), CAST(N'2020-04-27T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (851, 293, 2, CAST(N'2020-05-04T15:00:00' AS SmallDateTime), CAST(N'2020-05-04T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (852, 293, 2, CAST(N'2020-05-11T15:00:00' AS SmallDateTime), CAST(N'2020-05-11T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (853, 293, 2, CAST(N'2020-05-18T15:00:00' AS SmallDateTime), CAST(N'2020-05-18T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (854, 293, 2, CAST(N'2020-05-25T15:00:00' AS SmallDateTime), CAST(N'2020-05-25T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (855, 712, 2, CAST(N'2020-04-16T15:30:00' AS SmallDateTime), CAST(N'2020-04-16T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (856, 718, 2, CAST(N'2020-04-15T14:00:00' AS SmallDateTime), CAST(N'2020-04-15T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (857, 61, 1, CAST(N'2020-04-15T13:30:00' AS SmallDateTime), CAST(N'2020-04-15T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (858, 126, 2, CAST(N'2020-04-17T15:00:00' AS SmallDateTime), CAST(N'2020-04-17T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (859, 722, 2, CAST(N'2020-04-16T16:30:00' AS SmallDateTime), CAST(N'2020-04-16T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (860, 93, 1, CAST(N'2020-04-16T16:30:00' AS SmallDateTime), CAST(N'2020-04-16T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (861, 722, 2, CAST(N'2020-04-21T14:30:00' AS SmallDateTime), CAST(N'2020-04-21T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (862, 722, 2, CAST(N'2020-04-23T14:30:00' AS SmallDateTime), CAST(N'2020-04-23T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (863, 135, 2, CAST(N'2020-04-17T11:00:00' AS SmallDateTime), CAST(N'2020-04-17T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (864, 573, 2, CAST(N'2020-04-20T19:00:00' AS SmallDateTime), CAST(N'2020-04-20T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (865, 161, 1, CAST(N'2020-04-24T11:00:00' AS SmallDateTime), CAST(N'2020-04-24T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (866, 135, 5, CAST(N'2020-04-23T15:30:00' AS SmallDateTime), CAST(N'2020-04-23T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (867, 126, 2, CAST(N'2020-04-24T14:00:00' AS SmallDateTime), CAST(N'2020-04-24T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (868, 748, 2, CAST(N'2020-04-22T14:00:00' AS SmallDateTime), CAST(N'2020-04-22T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (869, 135, 2, CAST(N'2020-04-24T10:30:00' AS SmallDateTime), CAST(N'2020-04-24T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (870, 45, 2, CAST(N'2020-04-24T09:00:00' AS SmallDateTime), CAST(N'2020-04-24T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (871, 169, 2, CAST(N'2020-04-23T11:00:00' AS SmallDateTime), CAST(N'2020-04-23T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (872, 169, 2, CAST(N'2020-04-30T11:00:00' AS SmallDateTime), CAST(N'2020-04-30T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (873, 169, 2, CAST(N'2020-05-07T10:00:00' AS SmallDateTime), CAST(N'2020-05-07T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (874, 169, 2, CAST(N'2020-05-14T10:00:00' AS SmallDateTime), CAST(N'2020-05-14T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (875, 169, 2, CAST(N'2020-05-21T10:00:00' AS SmallDateTime), CAST(N'2020-05-21T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (876, 169, 2, CAST(N'2020-05-28T10:00:00' AS SmallDateTime), CAST(N'2020-05-28T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (877, 169, 2, CAST(N'2020-06-04T10:00:00' AS SmallDateTime), CAST(N'2020-06-04T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (878, 169, 2, CAST(N'2020-06-11T10:00:00' AS SmallDateTime), CAST(N'2020-06-11T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (879, 748, 2, CAST(N'2020-04-24T13:00:00' AS SmallDateTime), CAST(N'2020-04-24T14:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (880, 722, 2, CAST(N'2020-04-24T09:00:00' AS SmallDateTime), CAST(N'2020-04-24T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (881, 161, 1, CAST(N'2020-04-27T19:30:00' AS SmallDateTime), CAST(N'2020-04-27T20:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (882, 722, 2, CAST(N'2020-04-28T19:00:00' AS SmallDateTime), CAST(N'2020-04-28T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (883, 718, 2, CAST(N'2020-04-29T15:00:00' AS SmallDateTime), CAST(N'2020-04-29T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (884, 57, 2, CAST(N'2020-04-29T08:00:00' AS SmallDateTime), CAST(N'2020-04-29T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (885, 180, 2, CAST(N'2020-05-01T20:00:00' AS SmallDateTime), CAST(N'2020-05-01T21:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (886, 748, 2, CAST(N'2020-04-28T10:30:00' AS SmallDateTime), CAST(N'2020-04-28T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (887, 396, 6, CAST(N'2020-04-30T18:00:00' AS SmallDateTime), CAST(N'2020-04-30T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (888, 93, 1, CAST(N'2020-04-30T15:00:00' AS SmallDateTime), CAST(N'2020-04-30T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (889, 856, 6, CAST(N'2020-05-04T16:30:00' AS SmallDateTime), CAST(N'2020-05-04T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (890, 712, 2, CAST(N'2020-04-29T19:30:00' AS SmallDateTime), CAST(N'2020-04-29T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (891, 161, 1, CAST(N'2020-05-11T18:00:00' AS SmallDateTime), CAST(N'2020-05-11T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (892, 1102, 6, CAST(N'2020-04-30T16:30:00' AS SmallDateTime), CAST(N'2020-04-30T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (893, 748, 2, CAST(N'2020-04-30T16:00:00' AS SmallDateTime), CAST(N'2020-04-30T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (894, 736, 6, CAST(N'2020-05-07T15:00:00' AS SmallDateTime), CAST(N'2020-05-07T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (895, 1102, 2, CAST(N'2020-04-30T15:00:00' AS SmallDateTime), CAST(N'2020-04-30T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (896, 45, 2, CAST(N'2020-05-08T13:30:00' AS SmallDateTime), CAST(N'2020-05-08T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (897, 54, 6, CAST(N'2020-04-30T13:30:00' AS SmallDateTime), CAST(N'2020-04-30T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (898, 54, 6, CAST(N'2020-05-07T18:00:00' AS SmallDateTime), CAST(N'2020-05-07T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (899, 376, 6, CAST(N'2020-05-07T16:30:00' AS SmallDateTime), CAST(N'2020-05-07T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (900, 126, 2, CAST(N'2020-04-30T17:00:00' AS SmallDateTime), CAST(N'2020-04-30T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (901, 712, 6, CAST(N'2020-04-30T13:30:00' AS SmallDateTime), CAST(N'2020-04-30T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (902, 748, 2, CAST(N'2020-05-08T08:30:00' AS SmallDateTime), CAST(N'2020-05-08T09:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (903, 833, 2, CAST(N'2020-05-12T08:00:00' AS SmallDateTime), CAST(N'2020-05-12T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (904, 833, 3, CAST(N'2020-05-14T08:00:00' AS SmallDateTime), CAST(N'2020-05-14T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (905, 833, 3, CAST(N'2020-05-19T08:00:00' AS SmallDateTime), CAST(N'2020-05-19T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (906, 833, 3, CAST(N'2020-05-21T08:00:00' AS SmallDateTime), CAST(N'2020-05-21T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (907, 833, 3, CAST(N'2020-05-26T08:00:00' AS SmallDateTime), CAST(N'2020-05-26T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (908, 833, 3, CAST(N'2020-05-28T08:00:00' AS SmallDateTime), CAST(N'2020-05-28T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (909, 833, 3, CAST(N'2020-06-02T08:00:00' AS SmallDateTime), CAST(N'2020-06-02T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (910, 57, 3, CAST(N'2020-05-06T08:00:00' AS SmallDateTime), CAST(N'2020-05-06T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (911, 57, 3, CAST(N'2020-05-13T08:00:00' AS SmallDateTime), CAST(N'2020-05-13T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (912, 57, 3, CAST(N'2020-05-20T08:00:00' AS SmallDateTime), CAST(N'2020-05-20T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (913, 57, 3, CAST(N'2020-05-27T08:00:00' AS SmallDateTime), CAST(N'2020-05-27T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (914, 833, 3, CAST(N'2020-05-07T08:00:00' AS SmallDateTime), CAST(N'2020-05-07T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (915, 57, 3, CAST(N'2020-05-08T08:00:00' AS SmallDateTime), CAST(N'2020-05-08T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (916, 180, 3, CAST(N'2020-05-08T20:00:00' AS SmallDateTime), CAST(N'2020-05-08T21:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (917, 57, 3, CAST(N'2020-05-15T08:00:00' AS SmallDateTime), CAST(N'2020-05-15T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (918, 180, 3, CAST(N'2020-05-15T20:00:00' AS SmallDateTime), CAST(N'2020-05-15T21:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (919, 57, 3, CAST(N'2020-05-22T08:00:00' AS SmallDateTime), CAST(N'2020-05-22T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (920, 57, 3, CAST(N'2020-05-29T08:00:00' AS SmallDateTime), CAST(N'2020-05-29T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (921, 180, 3, CAST(N'2020-05-29T20:00:00' AS SmallDateTime), CAST(N'2020-05-29T21:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (922, 1102, 2, CAST(N'2020-05-15T15:00:00' AS SmallDateTime), CAST(N'2020-05-15T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (923, 149, 4, CAST(N'2020-04-29T18:00:00' AS SmallDateTime), CAST(N'2020-04-29T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (924, 149, 4, CAST(N'2020-05-04T18:00:00' AS SmallDateTime), CAST(N'2020-05-04T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (925, 149, 4, CAST(N'2020-05-06T18:00:00' AS SmallDateTime), CAST(N'2020-05-06T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (926, 149, 4, CAST(N'2020-05-11T18:00:00' AS SmallDateTime), CAST(N'2020-05-11T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (927, 149, 4, CAST(N'2020-05-13T18:00:00' AS SmallDateTime), CAST(N'2020-05-13T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (928, 149, 4, CAST(N'2020-05-18T18:00:00' AS SmallDateTime), CAST(N'2020-05-18T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (929, 149, 4, CAST(N'2020-05-20T18:00:00' AS SmallDateTime), CAST(N'2020-05-20T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (930, 149, 4, CAST(N'2020-05-25T18:00:00' AS SmallDateTime), CAST(N'2020-05-25T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (931, 149, 4, CAST(N'2020-05-27T18:00:00' AS SmallDateTime), CAST(N'2020-05-27T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (932, 149, 4, CAST(N'2020-06-01T18:00:00' AS SmallDateTime), CAST(N'2020-06-01T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (933, 149, 4, CAST(N'2020-06-03T18:00:00' AS SmallDateTime), CAST(N'2020-06-03T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (934, 149, 4, CAST(N'2020-06-08T18:00:00' AS SmallDateTime), CAST(N'2020-06-08T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (935, 149, 4, CAST(N'2020-06-10T18:00:00' AS SmallDateTime), CAST(N'2020-06-10T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (936, 149, 4, CAST(N'2020-06-15T18:00:00' AS SmallDateTime), CAST(N'2020-06-15T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (937, 149, 4, CAST(N'2020-06-17T18:00:00' AS SmallDateTime), CAST(N'2020-06-17T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (938, 149, 4, CAST(N'2020-06-22T18:00:00' AS SmallDateTime), CAST(N'2020-06-22T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (939, 149, 4, CAST(N'2020-06-24T18:00:00' AS SmallDateTime), CAST(N'2020-06-24T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (940, 149, 4, CAST(N'2020-06-29T18:00:00' AS SmallDateTime), CAST(N'2020-06-29T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (941, 149, 4, CAST(N'2020-07-01T18:00:00' AS SmallDateTime), CAST(N'2020-07-01T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (942, 149, 4, CAST(N'2020-07-06T18:00:00' AS SmallDateTime), CAST(N'2020-07-06T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (943, 149, 4, CAST(N'2020-07-08T18:00:00' AS SmallDateTime), CAST(N'2020-07-08T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (944, 149, 4, CAST(N'2020-07-13T18:00:00' AS SmallDateTime), CAST(N'2020-07-13T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (945, 149, 4, CAST(N'2020-07-15T18:00:00' AS SmallDateTime), CAST(N'2020-07-15T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (946, 149, 4, CAST(N'2020-07-20T18:00:00' AS SmallDateTime), CAST(N'2020-07-20T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (947, 149, 4, CAST(N'2020-07-22T18:00:00' AS SmallDateTime), CAST(N'2020-07-22T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (948, 149, 4, CAST(N'2020-07-27T18:00:00' AS SmallDateTime), CAST(N'2020-07-27T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (949, 149, 4, CAST(N'2020-07-29T18:00:00' AS SmallDateTime), CAST(N'2020-07-29T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (950, 149, 4, CAST(N'2020-08-03T18:00:00' AS SmallDateTime), CAST(N'2020-08-03T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (951, 149, 4, CAST(N'2020-08-05T18:00:00' AS SmallDateTime), CAST(N'2020-08-05T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (952, 149, 4, CAST(N'2020-08-10T18:00:00' AS SmallDateTime), CAST(N'2020-08-10T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (953, 149, 4, CAST(N'2020-08-12T18:00:00' AS SmallDateTime), CAST(N'2020-08-12T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (954, 149, 4, CAST(N'2020-08-17T18:00:00' AS SmallDateTime), CAST(N'2020-08-17T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (955, 149, 4, CAST(N'2020-08-19T18:00:00' AS SmallDateTime), CAST(N'2020-08-19T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (956, 149, 4, CAST(N'2020-08-24T18:00:00' AS SmallDateTime), CAST(N'2020-08-24T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (957, 149, 4, CAST(N'2020-08-26T18:00:00' AS SmallDateTime), CAST(N'2020-08-26T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (958, 149, 4, CAST(N'2020-08-31T18:00:00' AS SmallDateTime), CAST(N'2020-08-31T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (959, 149, 4, CAST(N'2020-09-02T18:00:00' AS SmallDateTime), CAST(N'2020-09-02T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (960, 149, 4, CAST(N'2020-09-07T18:00:00' AS SmallDateTime), CAST(N'2020-09-07T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (961, 149, 4, CAST(N'2020-09-09T18:00:00' AS SmallDateTime), CAST(N'2020-09-09T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (962, 149, 4, CAST(N'2020-09-14T18:00:00' AS SmallDateTime), CAST(N'2020-09-14T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (963, 149, 4, CAST(N'2020-09-16T18:00:00' AS SmallDateTime), CAST(N'2020-09-16T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (964, 149, 4, CAST(N'2020-09-21T18:00:00' AS SmallDateTime), CAST(N'2020-09-21T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (965, 149, 4, CAST(N'2020-09-23T18:00:00' AS SmallDateTime), CAST(N'2020-09-23T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (966, 149, 4, CAST(N'2020-09-28T18:00:00' AS SmallDateTime), CAST(N'2020-09-28T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (967, 149, 4, CAST(N'2020-09-30T18:00:00' AS SmallDateTime), CAST(N'2020-09-30T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (968, 149, 4, CAST(N'2020-10-05T18:00:00' AS SmallDateTime), CAST(N'2020-10-05T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (969, 149, 4, CAST(N'2020-10-07T18:00:00' AS SmallDateTime), CAST(N'2020-10-07T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (970, 149, 4, CAST(N'2020-10-12T18:00:00' AS SmallDateTime), CAST(N'2020-10-12T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (971, 149, 4, CAST(N'2020-10-14T18:00:00' AS SmallDateTime), CAST(N'2020-10-14T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (972, 149, 4, CAST(N'2020-10-19T18:00:00' AS SmallDateTime), CAST(N'2020-10-19T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (973, 149, 4, CAST(N'2020-10-21T18:00:00' AS SmallDateTime), CAST(N'2020-10-21T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (974, 149, 4, CAST(N'2020-10-26T18:00:00' AS SmallDateTime), CAST(N'2020-10-26T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (975, 149, 4, CAST(N'2020-10-28T18:00:00' AS SmallDateTime), CAST(N'2020-10-28T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (976, 149, 4, CAST(N'2020-11-02T18:00:00' AS SmallDateTime), CAST(N'2020-11-02T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (977, 149, 4, CAST(N'2020-11-04T18:00:00' AS SmallDateTime), CAST(N'2020-11-04T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (978, 149, 4, CAST(N'2020-11-09T18:00:00' AS SmallDateTime), CAST(N'2020-11-09T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (979, 149, 4, CAST(N'2020-11-11T18:00:00' AS SmallDateTime), CAST(N'2020-11-11T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (980, 149, 4, CAST(N'2020-11-16T18:00:00' AS SmallDateTime), CAST(N'2020-11-16T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (981, 149, 4, CAST(N'2020-11-18T18:00:00' AS SmallDateTime), CAST(N'2020-11-18T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (982, 149, 4, CAST(N'2020-11-23T18:00:00' AS SmallDateTime), CAST(N'2020-11-23T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (983, 149, 4, CAST(N'2020-11-25T18:00:00' AS SmallDateTime), CAST(N'2020-11-25T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (984, 149, 4, CAST(N'2020-11-30T18:00:00' AS SmallDateTime), CAST(N'2020-11-30T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (985, 149, 4, CAST(N'2020-12-02T18:00:00' AS SmallDateTime), CAST(N'2020-12-02T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (986, 149, 4, CAST(N'2020-12-07T18:00:00' AS SmallDateTime), CAST(N'2020-12-07T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (987, 149, 4, CAST(N'2020-12-09T18:00:00' AS SmallDateTime), CAST(N'2020-12-09T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (988, 149, 4, CAST(N'2020-12-14T18:00:00' AS SmallDateTime), CAST(N'2020-12-14T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (989, 149, 4, CAST(N'2020-12-16T18:00:00' AS SmallDateTime), CAST(N'2020-12-16T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (990, 748, 2, CAST(N'2020-05-05T10:00:00' AS SmallDateTime), CAST(N'2020-05-05T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (991, 952, 6, CAST(N'2020-05-04T15:00:00' AS SmallDateTime), CAST(N'2020-05-04T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (992, 712, 2, CAST(N'2020-05-06T14:00:00' AS SmallDateTime), CAST(N'2020-05-06T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (993, 429, 6, CAST(N'2020-05-04T13:30:00' AS SmallDateTime), CAST(N'2020-05-04T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (994, 175, 6, CAST(N'2020-05-11T15:00:00' AS SmallDateTime), CAST(N'2020-05-11T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (995, 34, 5, CAST(N'2020-05-06T17:00:00' AS SmallDateTime), CAST(N'2020-05-06T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (996, 535, 6, CAST(N'2020-05-05T09:30:00' AS SmallDateTime), CAST(N'2020-05-05T10:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (997, 1102, 6, CAST(N'2020-05-12T09:30:00' AS SmallDateTime), CAST(N'2020-05-12T10:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (998, 303, 6, CAST(N'2020-05-11T18:00:00' AS SmallDateTime), CAST(N'2020-05-11T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (999, 126, 2, CAST(N'2020-05-08T15:00:00' AS SmallDateTime), CAST(N'2020-05-08T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1000, 34, 5, CAST(N'2020-05-14T13:30:00' AS SmallDateTime), CAST(N'2020-05-14T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1001, 34, 5, CAST(N'2020-05-21T13:30:00' AS SmallDateTime), CAST(N'2020-05-21T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1002, 376, 6, CAST(N'2020-05-18T18:00:00' AS SmallDateTime), CAST(N'2020-05-18T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1003, 748, 2, CAST(N'2020-05-15T13:30:00' AS SmallDateTime), CAST(N'2020-05-15T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1004, 748, 2, CAST(N'2020-05-12T10:00:00' AS SmallDateTime), CAST(N'2020-05-12T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1005, 93, 1, CAST(N'2020-05-15T15:00:00' AS SmallDateTime), CAST(N'2020-05-15T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1006, 93, 1, CAST(N'2020-05-22T15:00:00' AS SmallDateTime), CAST(N'2020-05-22T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1007, 93, 1, CAST(N'2020-05-29T15:00:00' AS SmallDateTime), CAST(N'2020-05-29T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1008, 93, 1, CAST(N'2020-06-05T15:30:00' AS SmallDateTime), CAST(N'2020-06-05T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1009, 93, 1, CAST(N'2020-06-12T15:00:00' AS SmallDateTime), CAST(N'2020-06-12T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1010, 93, 1, CAST(N'2020-06-19T15:00:00' AS SmallDateTime), CAST(N'2020-06-19T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1011, 93, 1, CAST(N'2020-06-26T15:00:00' AS SmallDateTime), CAST(N'2020-06-26T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1012, 93, 1, CAST(N'2020-07-03T15:00:00' AS SmallDateTime), CAST(N'2020-07-03T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1013, 93, 1, CAST(N'2020-07-10T15:00:00' AS SmallDateTime), CAST(N'2020-07-10T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1014, 93, 1, CAST(N'2020-07-17T15:00:00' AS SmallDateTime), CAST(N'2020-07-17T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1015, 93, 1, CAST(N'2020-07-24T15:00:00' AS SmallDateTime), CAST(N'2020-07-24T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1016, 93, 1, CAST(N'2020-07-31T15:00:00' AS SmallDateTime), CAST(N'2020-07-31T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1017, 93, 1, CAST(N'2020-08-07T15:00:00' AS SmallDateTime), CAST(N'2020-08-07T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1018, 93, 1, CAST(N'2020-08-14T15:00:00' AS SmallDateTime), CAST(N'2020-08-14T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1019, 93, 1, CAST(N'2020-08-21T15:00:00' AS SmallDateTime), CAST(N'2020-08-21T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1020, 93, 1, CAST(N'2020-08-28T15:00:00' AS SmallDateTime), CAST(N'2020-08-28T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1021, 93, 1, CAST(N'2020-09-04T15:00:00' AS SmallDateTime), CAST(N'2020-09-04T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1022, 93, 1, CAST(N'2020-09-11T15:00:00' AS SmallDateTime), CAST(N'2020-09-11T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1023, 93, 1, CAST(N'2020-09-18T15:00:00' AS SmallDateTime), CAST(N'2020-09-18T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1024, 93, 1, CAST(N'2020-09-25T15:00:00' AS SmallDateTime), CAST(N'2020-09-25T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1025, 93, 1, CAST(N'2020-10-02T15:00:00' AS SmallDateTime), CAST(N'2020-10-02T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1026, 93, 1, CAST(N'2020-10-09T15:00:00' AS SmallDateTime), CAST(N'2020-10-09T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1027, 93, 1, CAST(N'2020-10-16T15:00:00' AS SmallDateTime), CAST(N'2020-10-16T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1028, 93, 1, CAST(N'2020-10-23T15:00:00' AS SmallDateTime), CAST(N'2020-10-23T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1029, 93, 1, CAST(N'2020-10-30T15:00:00' AS SmallDateTime), CAST(N'2020-10-30T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1030, 93, 1, CAST(N'2020-11-06T15:00:00' AS SmallDateTime), CAST(N'2020-11-06T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1031, 180, 3, CAST(N'2020-05-01T10:00:00' AS SmallDateTime), CAST(N'2020-05-01T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1032, 180, 3, CAST(N'2020-05-04T10:00:00' AS SmallDateTime), CAST(N'2020-05-04T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1033, 180, 3, CAST(N'2020-05-07T10:00:00' AS SmallDateTime), CAST(N'2020-05-07T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1034, 180, 3, CAST(N'2020-05-08T10:00:00' AS SmallDateTime), CAST(N'2020-05-08T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1035, 180, 3, CAST(N'2020-05-11T10:00:00' AS SmallDateTime), CAST(N'2020-05-11T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1036, 180, 3, CAST(N'2020-05-14T10:00:00' AS SmallDateTime), CAST(N'2020-05-14T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1037, 180, 3, CAST(N'2020-05-15T10:00:00' AS SmallDateTime), CAST(N'2020-05-15T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1038, 180, 3, CAST(N'2020-05-18T10:00:00' AS SmallDateTime), CAST(N'2020-05-18T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1039, 180, 3, CAST(N'2020-05-21T10:00:00' AS SmallDateTime), CAST(N'2020-05-21T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1040, 180, 3, CAST(N'2020-05-22T10:00:00' AS SmallDateTime), CAST(N'2020-05-22T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1041, 180, 3, CAST(N'2020-05-25T10:00:00' AS SmallDateTime), CAST(N'2020-05-25T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1042, 180, 3, CAST(N'2020-05-28T10:00:00' AS SmallDateTime), CAST(N'2020-05-28T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1043, 180, 3, CAST(N'2020-05-29T10:00:00' AS SmallDateTime), CAST(N'2020-05-29T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1044, 180, 3, CAST(N'2020-06-01T10:00:00' AS SmallDateTime), CAST(N'2020-06-01T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1045, 180, 3, CAST(N'2020-06-04T10:00:00' AS SmallDateTime), CAST(N'2020-06-04T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1046, 180, 3, CAST(N'2020-06-05T10:00:00' AS SmallDateTime), CAST(N'2020-06-05T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1047, 180, 3, CAST(N'2020-06-08T10:00:00' AS SmallDateTime), CAST(N'2020-06-08T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1048, 180, 3, CAST(N'2020-06-11T10:00:00' AS SmallDateTime), CAST(N'2020-06-11T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1049, 180, 3, CAST(N'2020-06-12T10:00:00' AS SmallDateTime), CAST(N'2020-06-12T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1050, 180, 3, CAST(N'2020-06-15T10:00:00' AS SmallDateTime), CAST(N'2020-06-15T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1051, 180, 3, CAST(N'2020-06-18T10:00:00' AS SmallDateTime), CAST(N'2020-06-18T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1052, 180, 3, CAST(N'2020-06-19T10:00:00' AS SmallDateTime), CAST(N'2020-06-19T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1053, 180, 3, CAST(N'2020-06-22T10:00:00' AS SmallDateTime), CAST(N'2020-06-22T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1054, 180, 3, CAST(N'2020-06-25T10:00:00' AS SmallDateTime), CAST(N'2020-06-25T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1055, 180, 3, CAST(N'2020-06-26T10:00:00' AS SmallDateTime), CAST(N'2020-06-26T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1056, 180, 3, CAST(N'2020-06-29T10:00:00' AS SmallDateTime), CAST(N'2020-06-29T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1057, 180, 3, CAST(N'2020-07-02T10:00:00' AS SmallDateTime), CAST(N'2020-07-02T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1058, 180, 3, CAST(N'2020-07-03T10:00:00' AS SmallDateTime), CAST(N'2020-07-03T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1059, 180, 3, CAST(N'2020-07-06T10:00:00' AS SmallDateTime), CAST(N'2020-07-06T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1060, 180, 3, CAST(N'2020-07-09T10:00:00' AS SmallDateTime), CAST(N'2020-07-09T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1061, 180, 3, CAST(N'2020-07-10T10:00:00' AS SmallDateTime), CAST(N'2020-07-10T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1062, 180, 3, CAST(N'2020-07-13T10:00:00' AS SmallDateTime), CAST(N'2020-07-13T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1063, 180, 3, CAST(N'2020-07-16T10:00:00' AS SmallDateTime), CAST(N'2020-07-16T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1064, 180, 3, CAST(N'2020-07-17T10:00:00' AS SmallDateTime), CAST(N'2020-07-17T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1065, 180, 3, CAST(N'2020-07-20T10:00:00' AS SmallDateTime), CAST(N'2020-07-20T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1066, 180, 3, CAST(N'2020-07-23T10:00:00' AS SmallDateTime), CAST(N'2020-07-23T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1067, 180, 3, CAST(N'2020-07-24T10:00:00' AS SmallDateTime), CAST(N'2020-07-24T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1068, 180, 3, CAST(N'2020-07-27T10:00:00' AS SmallDateTime), CAST(N'2020-07-27T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1069, 180, 3, CAST(N'2020-07-30T10:00:00' AS SmallDateTime), CAST(N'2020-07-30T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1070, 180, 3, CAST(N'2020-07-31T10:00:00' AS SmallDateTime), CAST(N'2020-07-31T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1071, 180, 3, CAST(N'2020-08-03T10:00:00' AS SmallDateTime), CAST(N'2020-08-03T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1072, 180, 3, CAST(N'2020-08-06T10:00:00' AS SmallDateTime), CAST(N'2020-08-06T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1073, 180, 3, CAST(N'2020-08-07T10:00:00' AS SmallDateTime), CAST(N'2020-08-07T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1074, 180, 3, CAST(N'2020-08-10T10:00:00' AS SmallDateTime), CAST(N'2020-08-10T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1075, 180, 3, CAST(N'2020-08-13T10:00:00' AS SmallDateTime), CAST(N'2020-08-13T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1076, 180, 3, CAST(N'2020-08-14T10:00:00' AS SmallDateTime), CAST(N'2020-08-14T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1077, 180, 3, CAST(N'2020-08-17T10:00:00' AS SmallDateTime), CAST(N'2020-08-17T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1078, 180, 3, CAST(N'2020-08-20T10:00:00' AS SmallDateTime), CAST(N'2020-08-20T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1079, 180, 3, CAST(N'2020-08-21T10:00:00' AS SmallDateTime), CAST(N'2020-08-21T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1080, 180, 3, CAST(N'2020-08-24T10:00:00' AS SmallDateTime), CAST(N'2020-08-24T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1081, 180, 3, CAST(N'2020-08-27T10:00:00' AS SmallDateTime), CAST(N'2020-08-27T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1082, 180, 3, CAST(N'2020-08-28T10:00:00' AS SmallDateTime), CAST(N'2020-08-28T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1083, 180, 3, CAST(N'2020-08-31T10:00:00' AS SmallDateTime), CAST(N'2020-08-31T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1084, 180, 3, CAST(N'2020-09-03T10:00:00' AS SmallDateTime), CAST(N'2020-09-03T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1085, 180, 3, CAST(N'2020-09-04T10:00:00' AS SmallDateTime), CAST(N'2020-09-04T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1086, 180, 3, CAST(N'2020-09-07T10:00:00' AS SmallDateTime), CAST(N'2020-09-07T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1087, 180, 3, CAST(N'2020-09-10T10:00:00' AS SmallDateTime), CAST(N'2020-09-10T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1088, 180, 3, CAST(N'2020-09-11T10:00:00' AS SmallDateTime), CAST(N'2020-09-11T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1089, 180, 3, CAST(N'2020-09-14T10:00:00' AS SmallDateTime), CAST(N'2020-09-14T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1090, 180, 3, CAST(N'2020-09-17T10:00:00' AS SmallDateTime), CAST(N'2020-09-17T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1091, 135, 2, CAST(N'2020-05-14T13:30:00' AS SmallDateTime), CAST(N'2020-05-14T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1092, 135, 2, CAST(N'2020-05-19T13:30:00' AS SmallDateTime), CAST(N'2020-05-19T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1093, 135, 2, CAST(N'2020-05-21T13:30:00' AS SmallDateTime), CAST(N'2020-05-21T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1094, 135, 2, CAST(N'2020-05-26T13:30:00' AS SmallDateTime), CAST(N'2020-05-26T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1095, 135, 2, CAST(N'2020-05-28T13:30:00' AS SmallDateTime), CAST(N'2020-05-28T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1096, 135, 2, CAST(N'2020-06-02T13:30:00' AS SmallDateTime), CAST(N'2020-06-02T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1097, 135, 2, CAST(N'2020-06-04T13:30:00' AS SmallDateTime), CAST(N'2020-06-04T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1098, 135, 2, CAST(N'2020-06-09T13:30:00' AS SmallDateTime), CAST(N'2020-06-09T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1099, 135, 2, CAST(N'2020-06-11T13:30:00' AS SmallDateTime), CAST(N'2020-06-11T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1100, 135, 2, CAST(N'2020-06-16T13:30:00' AS SmallDateTime), CAST(N'2020-06-16T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1101, 135, 2, CAST(N'2020-06-18T13:30:00' AS SmallDateTime), CAST(N'2020-06-18T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1102, 135, 2, CAST(N'2020-06-23T13:30:00' AS SmallDateTime), CAST(N'2020-06-23T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1103, 135, 2, CAST(N'2020-06-25T13:30:00' AS SmallDateTime), CAST(N'2020-06-25T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1104, 135, 2, CAST(N'2020-06-30T13:30:00' AS SmallDateTime), CAST(N'2020-06-30T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1105, 135, 2, CAST(N'2020-07-02T13:30:00' AS SmallDateTime), CAST(N'2020-07-02T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1106, 135, 2, CAST(N'2020-07-07T13:30:00' AS SmallDateTime), CAST(N'2020-07-07T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1107, 135, 2, CAST(N'2020-07-09T13:30:00' AS SmallDateTime), CAST(N'2020-07-09T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1108, 135, 2, CAST(N'2020-07-14T13:30:00' AS SmallDateTime), CAST(N'2020-07-14T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1109, 135, 2, CAST(N'2020-07-16T13:30:00' AS SmallDateTime), CAST(N'2020-07-16T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1110, 135, 2, CAST(N'2020-07-21T13:30:00' AS SmallDateTime), CAST(N'2020-07-21T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1111, 61, 1, CAST(N'2020-05-11T18:00:00' AS SmallDateTime), CAST(N'2020-05-11T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1112, 653, 6, CAST(N'2020-05-11T19:30:00' AS SmallDateTime), CAST(N'2020-05-11T20:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1113, 135, 5, CAST(N'2020-05-13T10:30:00' AS SmallDateTime), CAST(N'2020-05-13T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1114, 135, 5, CAST(N'2020-05-27T10:30:00' AS SmallDateTime), CAST(N'2020-05-27T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1115, 135, 5, CAST(N'2020-06-10T10:30:00' AS SmallDateTime), CAST(N'2020-06-10T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1116, 126, 2, CAST(N'2020-05-15T15:00:00' AS SmallDateTime), CAST(N'2020-05-15T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1117, 161, 1, CAST(N'2020-05-18T18:00:00' AS SmallDateTime), CAST(N'2020-05-18T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1118, 653, 6, CAST(N'2020-05-25T18:00:00' AS SmallDateTime), CAST(N'2020-05-25T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1119, 718, 2, CAST(N'2020-05-20T13:30:00' AS SmallDateTime), CAST(N'2020-05-20T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1120, 718, 2, CAST(N'2020-05-12T17:30:00' AS SmallDateTime), CAST(N'2020-05-12T18:10:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1121, 555, 6, CAST(N'2020-05-21T18:00:00' AS SmallDateTime), CAST(N'2020-05-21T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1122, 522, 6, CAST(N'2020-05-19T10:00:00' AS SmallDateTime), CAST(N'2020-05-19T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1123, 149, 5, CAST(N'2020-05-14T19:00:00' AS SmallDateTime), CAST(N'2020-05-14T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1124, 293, 2, CAST(N'2020-05-14T16:00:00' AS SmallDateTime), CAST(N'2020-05-14T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1125, 54, 1, CAST(N'2020-05-15T11:00:00' AS SmallDateTime), CAST(N'2020-05-15T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1126, 1102, 6, CAST(N'2020-05-19T11:00:00' AS SmallDateTime), CAST(N'2020-05-19T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1127, 384, 5, CAST(N'2020-05-19T09:30:00' AS SmallDateTime), CAST(N'2020-05-19T10:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1128, 135, 5, CAST(N'2020-05-20T13:30:00' AS SmallDateTime), CAST(N'2020-05-20T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1129, 135, 1, CAST(N'2020-05-18T13:30:00' AS SmallDateTime), CAST(N'2020-05-18T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1130, 54, 1, CAST(N'2020-05-22T11:30:00' AS SmallDateTime), CAST(N'2020-05-22T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1131, 54, 1, CAST(N'2020-05-29T11:30:00' AS SmallDateTime), CAST(N'2020-05-29T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1132, 54, 1, CAST(N'2020-06-05T11:30:00' AS SmallDateTime), CAST(N'2020-06-05T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1133, 54, 1, CAST(N'2020-06-12T11:30:00' AS SmallDateTime), CAST(N'2020-06-12T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1134, 54, 1, CAST(N'2020-06-19T11:30:00' AS SmallDateTime), CAST(N'2020-06-19T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1135, 54, 1, CAST(N'2020-06-26T11:30:00' AS SmallDateTime), CAST(N'2020-06-26T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1136, 54, 1, CAST(N'2020-07-03T10:15:00' AS SmallDateTime), CAST(N'2020-07-03T10:45:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1137, 54, 1, CAST(N'2020-07-10T11:30:00' AS SmallDateTime), CAST(N'2020-07-10T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1138, 54, 1, CAST(N'2020-07-17T11:30:00' AS SmallDateTime), CAST(N'2020-07-17T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1139, 54, 1, CAST(N'2020-07-24T11:30:00' AS SmallDateTime), CAST(N'2020-07-24T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1140, 54, 1, CAST(N'2020-07-31T11:30:00' AS SmallDateTime), CAST(N'2020-07-31T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1141, 54, 1, CAST(N'2020-08-07T11:30:00' AS SmallDateTime), CAST(N'2020-08-07T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1142, 54, 1, CAST(N'2020-08-14T11:30:00' AS SmallDateTime), CAST(N'2020-08-14T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1143, 54, 1, CAST(N'2020-08-21T11:30:00' AS SmallDateTime), CAST(N'2020-08-21T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1144, 54, 1, CAST(N'2020-08-28T11:30:00' AS SmallDateTime), CAST(N'2020-08-28T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1145, 54, 1, CAST(N'2020-09-04T11:30:00' AS SmallDateTime), CAST(N'2020-09-04T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1146, 54, 1, CAST(N'2020-09-11T11:30:00' AS SmallDateTime), CAST(N'2020-09-11T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1147, 54, 1, CAST(N'2020-09-18T11:30:00' AS SmallDateTime), CAST(N'2020-09-18T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1148, 54, 1, CAST(N'2020-09-25T11:30:00' AS SmallDateTime), CAST(N'2020-09-25T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1149, 54, 1, CAST(N'2020-10-02T11:30:00' AS SmallDateTime), CAST(N'2020-10-02T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1150, 54, 1, CAST(N'2020-10-09T11:30:00' AS SmallDateTime), CAST(N'2020-10-09T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1151, 54, 1, CAST(N'2020-10-16T11:30:00' AS SmallDateTime), CAST(N'2020-10-16T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1152, 54, 1, CAST(N'2020-10-23T11:30:00' AS SmallDateTime), CAST(N'2020-10-23T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1153, 54, 1, CAST(N'2020-10-30T11:30:00' AS SmallDateTime), CAST(N'2020-10-30T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1154, 54, 1, CAST(N'2020-11-06T11:30:00' AS SmallDateTime), CAST(N'2020-11-06T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1155, 54, 1, CAST(N'2020-11-13T11:30:00' AS SmallDateTime), CAST(N'2020-11-13T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1156, 54, 1, CAST(N'2020-11-20T11:30:00' AS SmallDateTime), CAST(N'2020-11-20T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1157, 54, 1, CAST(N'2020-11-27T11:30:00' AS SmallDateTime), CAST(N'2020-11-27T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1158, 54, 1, CAST(N'2020-12-04T11:30:00' AS SmallDateTime), CAST(N'2020-12-04T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1159, 54, 1, CAST(N'2020-12-11T11:30:00' AS SmallDateTime), CAST(N'2020-12-11T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1160, 54, 1, CAST(N'2020-12-18T11:30:00' AS SmallDateTime), CAST(N'2020-12-18T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1161, 499, 6, CAST(N'2020-05-21T15:00:00' AS SmallDateTime), CAST(N'2020-05-21T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1162, 152, 6, CAST(N'2020-05-19T08:00:00' AS SmallDateTime), CAST(N'2020-05-19T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1163, 175, 6, CAST(N'2020-05-18T15:00:00' AS SmallDateTime), CAST(N'2020-05-18T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1164, 952, 6, CAST(N'2020-05-25T15:00:00' AS SmallDateTime), CAST(N'2020-05-25T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1165, 1004, 6, CAST(N'2020-05-18T15:00:00' AS SmallDateTime), CAST(N'2020-05-18T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1166, 877, 6, CAST(N'2020-05-21T16:30:00' AS SmallDateTime), CAST(N'2020-05-21T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1167, 1102, 6, CAST(N'2020-05-19T11:00:00' AS SmallDateTime), CAST(N'2020-05-19T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1168, 748, 2, CAST(N'2020-05-19T10:30:00' AS SmallDateTime), CAST(N'2020-05-19T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1169, 126, 2, CAST(N'2020-05-22T14:00:00' AS SmallDateTime), CAST(N'2020-05-22T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1170, 135, 1, CAST(N'2020-05-20T10:30:00' AS SmallDateTime), CAST(N'2020-05-20T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1171, 499, 6, CAST(N'2020-05-25T13:30:00' AS SmallDateTime), CAST(N'2020-05-25T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1172, 712, 2, CAST(N'2020-05-20T19:00:00' AS SmallDateTime), CAST(N'2020-05-20T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1173, 376, 6, CAST(N'2020-05-25T16:30:00' AS SmallDateTime), CAST(N'2020-05-25T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1174, 249, 2, CAST(N'2020-05-22T17:00:00' AS SmallDateTime), CAST(N'2020-05-22T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1175, 249, 2, CAST(N'2020-05-29T17:00:00' AS SmallDateTime), CAST(N'2020-05-29T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1176, 249, 2, CAST(N'2020-06-05T17:00:00' AS SmallDateTime), CAST(N'2020-06-05T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1177, 249, 2, CAST(N'2020-06-12T17:00:00' AS SmallDateTime), CAST(N'2020-06-12T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1178, 249, 2, CAST(N'2020-06-19T17:00:00' AS SmallDateTime), CAST(N'2020-06-19T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1179, 249, 2, CAST(N'2020-06-26T17:00:00' AS SmallDateTime), CAST(N'2020-06-26T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1180, 249, 2, CAST(N'2020-07-03T17:00:00' AS SmallDateTime), CAST(N'2020-07-03T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1181, 249, 2, CAST(N'2020-07-10T17:00:00' AS SmallDateTime), CAST(N'2020-07-10T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1182, 249, 2, CAST(N'2020-07-17T17:00:00' AS SmallDateTime), CAST(N'2020-07-17T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1183, 249, 2, CAST(N'2020-07-24T17:00:00' AS SmallDateTime), CAST(N'2020-07-24T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1184, 249, 2, CAST(N'2020-07-31T17:00:00' AS SmallDateTime), CAST(N'2020-07-31T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1185, 249, 2, CAST(N'2020-08-07T17:00:00' AS SmallDateTime), CAST(N'2020-08-07T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1186, 249, 2, CAST(N'2020-08-14T17:00:00' AS SmallDateTime), CAST(N'2020-08-14T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1187, 249, 2, CAST(N'2020-08-21T17:00:00' AS SmallDateTime), CAST(N'2020-08-21T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1188, 249, 2, CAST(N'2020-08-28T17:00:00' AS SmallDateTime), CAST(N'2020-08-28T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1189, 249, 2, CAST(N'2020-09-04T17:00:00' AS SmallDateTime), CAST(N'2020-09-04T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1190, 249, 2, CAST(N'2020-09-11T17:00:00' AS SmallDateTime), CAST(N'2020-09-11T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1191, 249, 2, CAST(N'2020-09-18T17:00:00' AS SmallDateTime), CAST(N'2020-09-18T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1192, 249, 2, CAST(N'2020-09-25T17:00:00' AS SmallDateTime), CAST(N'2020-09-25T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1193, 249, 2, CAST(N'2020-10-02T17:00:00' AS SmallDateTime), CAST(N'2020-10-02T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1194, 249, 2, CAST(N'2020-10-09T17:00:00' AS SmallDateTime), CAST(N'2020-10-09T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1195, 249, 2, CAST(N'2020-10-16T17:00:00' AS SmallDateTime), CAST(N'2020-10-16T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1196, 249, 2, CAST(N'2020-10-23T17:00:00' AS SmallDateTime), CAST(N'2020-10-23T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1197, 249, 2, CAST(N'2020-10-30T17:00:00' AS SmallDateTime), CAST(N'2020-10-30T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1198, 249, 2, CAST(N'2020-11-06T17:00:00' AS SmallDateTime), CAST(N'2020-11-06T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1199, 249, 2, CAST(N'2020-11-13T17:00:00' AS SmallDateTime), CAST(N'2020-11-13T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1200, 249, 2, CAST(N'2020-11-20T17:00:00' AS SmallDateTime), CAST(N'2020-11-20T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1201, 249, 2, CAST(N'2020-11-27T17:00:00' AS SmallDateTime), CAST(N'2020-11-27T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1202, 249, 2, CAST(N'2020-12-04T17:00:00' AS SmallDateTime), CAST(N'2020-12-04T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1203, 249, 2, CAST(N'2020-12-11T17:00:00' AS SmallDateTime), CAST(N'2020-12-11T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1204, 249, 2, CAST(N'2020-12-18T17:00:00' AS SmallDateTime), CAST(N'2020-12-18T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1205, 748, 2, CAST(N'2020-05-22T09:00:00' AS SmallDateTime), CAST(N'2020-05-22T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1206, 1102, 6, CAST(N'2020-05-26T09:30:00' AS SmallDateTime), CAST(N'2020-05-26T10:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1207, 293, 2, CAST(N'2020-05-20T14:30:00' AS SmallDateTime), CAST(N'2020-05-20T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1208, 54, 1, CAST(N'2020-05-21T09:00:00' AS SmallDateTime), CAST(N'2020-05-21T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1209, 249, 5, CAST(N'2020-05-26T17:00:00' AS SmallDateTime), CAST(N'2020-05-26T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1210, 249, 5, CAST(N'2020-06-02T17:00:00' AS SmallDateTime), CAST(N'2020-06-02T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1211, 249, 5, CAST(N'2020-06-09T17:00:00' AS SmallDateTime), CAST(N'2020-06-09T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1212, 249, 11, CAST(N'2020-06-16T17:00:00' AS SmallDateTime), CAST(N'2020-06-16T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1213, 249, 5, CAST(N'2020-06-23T17:00:00' AS SmallDateTime), CAST(N'2020-06-23T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1214, 249, 5, CAST(N'2020-06-30T17:00:00' AS SmallDateTime), CAST(N'2020-06-30T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1215, 249, 5, CAST(N'2020-07-07T17:00:00' AS SmallDateTime), CAST(N'2020-07-07T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1216, 249, 11, CAST(N'2020-07-14T17:00:00' AS SmallDateTime), CAST(N'2020-07-14T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1217, 249, 5, CAST(N'2020-07-21T17:00:00' AS SmallDateTime), CAST(N'2020-07-21T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1218, 249, 5, CAST(N'2020-07-28T17:00:00' AS SmallDateTime), CAST(N'2020-07-28T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1219, 249, 5, CAST(N'2020-08-04T17:00:00' AS SmallDateTime), CAST(N'2020-08-04T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1220, 249, 5, CAST(N'2020-08-11T17:00:00' AS SmallDateTime), CAST(N'2020-08-11T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1221, 249, 11, CAST(N'2020-08-18T17:00:00' AS SmallDateTime), CAST(N'2020-08-18T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1222, 249, 5, CAST(N'2020-08-25T17:00:00' AS SmallDateTime), CAST(N'2020-08-25T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1223, 249, 5, CAST(N'2020-09-01T17:00:00' AS SmallDateTime), CAST(N'2020-09-01T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1224, 249, 5, CAST(N'2020-09-08T17:00:00' AS SmallDateTime), CAST(N'2020-09-08T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1225, 249, 11, CAST(N'2020-09-15T17:00:00' AS SmallDateTime), CAST(N'2020-09-15T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1226, 249, 5, CAST(N'2020-09-22T17:00:00' AS SmallDateTime), CAST(N'2020-09-22T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1227, 249, 5, CAST(N'2020-09-29T17:00:00' AS SmallDateTime), CAST(N'2020-09-29T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1228, 249, 11, CAST(N'2020-10-06T17:30:00' AS SmallDateTime), CAST(N'2020-10-06T18:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1229, 249, 11, CAST(N'2020-10-13T17:00:00' AS SmallDateTime), CAST(N'2020-10-13T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1230, 249, 11, CAST(N'2020-10-20T17:00:00' AS SmallDateTime), CAST(N'2020-10-20T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1231, 249, 5, CAST(N'2020-10-27T17:00:00' AS SmallDateTime), CAST(N'2020-10-27T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1232, 249, 5, CAST(N'2020-11-03T17:00:00' AS SmallDateTime), CAST(N'2020-11-03T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1233, 249, 5, CAST(N'2020-11-10T17:00:00' AS SmallDateTime), CAST(N'2020-11-10T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1234, 249, 11, CAST(N'2020-11-17T17:00:00' AS SmallDateTime), CAST(N'2020-11-17T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1235, 249, 5, CAST(N'2020-11-24T17:00:00' AS SmallDateTime), CAST(N'2020-11-24T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1236, 249, 5, CAST(N'2020-12-01T17:00:00' AS SmallDateTime), CAST(N'2020-12-01T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1237, 249, 5, CAST(N'2020-12-08T17:00:00' AS SmallDateTime), CAST(N'2020-12-08T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1238, 249, 11, CAST(N'2020-12-15T17:00:00' AS SmallDateTime), CAST(N'2020-12-15T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1239, 45, 1, CAST(N'2020-05-21T13:30:00' AS SmallDateTime), CAST(N'2020-05-21T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1240, 135, 1, CAST(N'2020-05-22T10:30:00' AS SmallDateTime), CAST(N'2020-05-22T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1241, 135, 5, CAST(N'2020-06-03T13:30:00' AS SmallDateTime), CAST(N'2020-06-03T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1242, 384, 5, CAST(N'2020-05-21T09:00:00' AS SmallDateTime), CAST(N'2020-05-21T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1243, 293, 2, CAST(N'2020-05-28T15:00:00' AS SmallDateTime), CAST(N'2020-05-28T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1244, 45, 2, CAST(N'2020-05-26T10:00:00' AS SmallDateTime), CAST(N'2020-05-26T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1245, 45, 2, CAST(N'2020-06-02T10:00:00' AS SmallDateTime), CAST(N'2020-06-02T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1246, 45, 2, CAST(N'2020-06-09T10:00:00' AS SmallDateTime), CAST(N'2020-06-09T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1247, 45, 2, CAST(N'2020-05-29T10:30:00' AS SmallDateTime), CAST(N'2020-05-29T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1248, 126, 2, CAST(N'2020-05-29T14:00:00' AS SmallDateTime), CAST(N'2020-05-29T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1249, 126, 2, CAST(N'2020-06-05T13:00:00' AS SmallDateTime), CAST(N'2020-06-05T14:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1250, 126, 2, CAST(N'2020-06-12T13:00:00' AS SmallDateTime), CAST(N'2020-06-12T14:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1251, 126, 2, CAST(N'2020-06-19T14:00:00' AS SmallDateTime), CAST(N'2020-06-19T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1252, 126, 2, CAST(N'2020-06-26T14:30:00' AS SmallDateTime), CAST(N'2020-06-26T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1253, 126, 2, CAST(N'2020-07-03T14:00:00' AS SmallDateTime), CAST(N'2020-07-03T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1254, 748, 2, CAST(N'2020-05-26T10:00:00' AS SmallDateTime), CAST(N'2020-05-26T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1255, 149, 4, CAST(N'2020-05-22T18:00:00' AS SmallDateTime), CAST(N'2020-05-22T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1256, 573, 2, CAST(N'2020-06-04T09:30:00' AS SmallDateTime), CAST(N'2020-06-04T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1257, 573, 2, CAST(N'2020-05-28T09:30:00' AS SmallDateTime), CAST(N'2020-05-28T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1258, 748, 2, CAST(N'2020-05-29T10:30:00' AS SmallDateTime), CAST(N'2020-05-29T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1259, 61, 1, CAST(N'2020-05-27T19:30:00' AS SmallDateTime), CAST(N'2020-05-27T20:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1260, 136, 3, CAST(N'2020-05-26T19:00:00' AS SmallDateTime), CAST(N'2020-05-26T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1261, 136, 3, CAST(N'2020-06-02T19:00:00' AS SmallDateTime), CAST(N'2020-06-02T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1262, 136, 3, CAST(N'2020-06-09T19:00:00' AS SmallDateTime), CAST(N'2020-06-09T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1263, 136, 3, CAST(N'2020-06-16T19:00:00' AS SmallDateTime), CAST(N'2020-06-16T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1264, 136, 3, CAST(N'2020-06-23T19:00:00' AS SmallDateTime), CAST(N'2020-06-23T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1265, 136, 3, CAST(N'2020-06-30T19:00:00' AS SmallDateTime), CAST(N'2020-06-30T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1266, 136, 3, CAST(N'2020-07-07T19:00:00' AS SmallDateTime), CAST(N'2020-07-07T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1267, 136, 3, CAST(N'2020-07-14T19:00:00' AS SmallDateTime), CAST(N'2020-07-14T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1268, 136, 3, CAST(N'2020-07-21T19:00:00' AS SmallDateTime), CAST(N'2020-07-21T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1269, 136, 3, CAST(N'2020-07-28T19:00:00' AS SmallDateTime), CAST(N'2020-07-28T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1270, 136, 3, CAST(N'2020-08-04T19:00:00' AS SmallDateTime), CAST(N'2020-08-04T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1271, 136, 3, CAST(N'2020-08-11T19:00:00' AS SmallDateTime), CAST(N'2020-08-11T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1272, 136, 3, CAST(N'2020-08-18T19:00:00' AS SmallDateTime), CAST(N'2020-08-18T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1273, 136, 3, CAST(N'2020-08-25T19:00:00' AS SmallDateTime), CAST(N'2020-08-25T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1274, 136, 3, CAST(N'2020-09-01T19:00:00' AS SmallDateTime), CAST(N'2020-09-01T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1275, 136, 3, CAST(N'2020-09-08T19:00:00' AS SmallDateTime), CAST(N'2020-09-08T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1276, 136, 3, CAST(N'2020-09-15T19:00:00' AS SmallDateTime), CAST(N'2020-09-15T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1277, 136, 3, CAST(N'2020-09-22T19:00:00' AS SmallDateTime), CAST(N'2020-09-22T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1278, 136, 3, CAST(N'2020-09-29T19:00:00' AS SmallDateTime), CAST(N'2020-09-29T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1279, 136, 3, CAST(N'2020-10-06T19:00:00' AS SmallDateTime), CAST(N'2020-10-06T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1280, 136, 3, CAST(N'2020-10-13T19:00:00' AS SmallDateTime), CAST(N'2020-10-13T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1281, 136, 3, CAST(N'2020-10-20T19:00:00' AS SmallDateTime), CAST(N'2020-10-20T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1282, 136, 3, CAST(N'2020-10-27T19:00:00' AS SmallDateTime), CAST(N'2020-10-27T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1283, 136, 3, CAST(N'2020-11-03T19:00:00' AS SmallDateTime), CAST(N'2020-11-03T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1284, 136, 3, CAST(N'2020-11-10T19:00:00' AS SmallDateTime), CAST(N'2020-11-10T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1285, 136, 3, CAST(N'2020-11-17T19:00:00' AS SmallDateTime), CAST(N'2020-11-17T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1286, 136, 3, CAST(N'2020-11-24T19:00:00' AS SmallDateTime), CAST(N'2020-11-24T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1287, 136, 3, CAST(N'2020-12-01T19:00:00' AS SmallDateTime), CAST(N'2020-12-01T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1288, 136, 3, CAST(N'2020-12-08T19:00:00' AS SmallDateTime), CAST(N'2020-12-08T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1289, 136, 3, CAST(N'2020-12-15T19:00:00' AS SmallDateTime), CAST(N'2020-12-15T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1290, 982, 6, CAST(N'2020-06-01T18:00:00' AS SmallDateTime), CAST(N'2020-06-01T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1291, 522, 6, CAST(N'2020-06-02T11:00:00' AS SmallDateTime), CAST(N'2020-06-02T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1292, 751, 6, CAST(N'2020-06-04T13:30:00' AS SmallDateTime), CAST(N'2020-06-04T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1293, 180, 1, CAST(N'2020-05-26T09:30:00' AS SmallDateTime), CAST(N'2020-05-26T10:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1294, 804, 6, CAST(N'2020-05-29T09:30:00' AS SmallDateTime), CAST(N'2020-05-29T10:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1295, 45, 1, CAST(N'2020-05-26T11:00:00' AS SmallDateTime), CAST(N'2020-05-26T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1296, 952, 6, CAST(N'2020-06-08T15:00:00' AS SmallDateTime), CAST(N'2020-06-08T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1297, 249, 2, CAST(N'2020-05-26T16:00:00' AS SmallDateTime), CAST(N'2020-05-26T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1298, 249, 2, CAST(N'2020-06-02T16:00:00' AS SmallDateTime), CAST(N'2020-06-02T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1299, 249, 2, CAST(N'2020-06-09T16:00:00' AS SmallDateTime), CAST(N'2020-06-09T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1300, 249, 2, CAST(N'2020-06-16T16:00:00' AS SmallDateTime), CAST(N'2020-06-16T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1301, 249, 2, CAST(N'2020-06-23T16:00:00' AS SmallDateTime), CAST(N'2020-06-23T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1302, 249, 2, CAST(N'2020-06-30T16:00:00' AS SmallDateTime), CAST(N'2020-06-30T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1303, 249, 2, CAST(N'2020-07-07T16:00:00' AS SmallDateTime), CAST(N'2020-07-07T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1304, 249, 2, CAST(N'2020-07-14T16:00:00' AS SmallDateTime), CAST(N'2020-07-14T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1305, 249, 2, CAST(N'2020-07-21T16:00:00' AS SmallDateTime), CAST(N'2020-07-21T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1306, 249, 2, CAST(N'2020-07-28T16:00:00' AS SmallDateTime), CAST(N'2020-07-28T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1307, 249, 2, CAST(N'2020-08-04T16:00:00' AS SmallDateTime), CAST(N'2020-08-04T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1308, 249, 2, CAST(N'2020-08-11T16:00:00' AS SmallDateTime), CAST(N'2020-08-11T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1309, 249, 2, CAST(N'2020-08-18T16:00:00' AS SmallDateTime), CAST(N'2020-08-18T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1310, 249, 2, CAST(N'2020-08-25T16:00:00' AS SmallDateTime), CAST(N'2020-08-25T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1311, 249, 2, CAST(N'2020-09-01T16:00:00' AS SmallDateTime), CAST(N'2020-09-01T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1312, 249, 2, CAST(N'2020-09-08T16:00:00' AS SmallDateTime), CAST(N'2020-09-08T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1313, 249, 2, CAST(N'2020-09-15T16:00:00' AS SmallDateTime), CAST(N'2020-09-15T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1314, 249, 2, CAST(N'2020-09-22T16:00:00' AS SmallDateTime), CAST(N'2020-09-22T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1315, 249, 2, CAST(N'2020-09-29T16:00:00' AS SmallDateTime), CAST(N'2020-09-29T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1316, 249, 2, CAST(N'2020-10-06T16:00:00' AS SmallDateTime), CAST(N'2020-10-06T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1317, 249, 2, CAST(N'2020-10-13T16:00:00' AS SmallDateTime), CAST(N'2020-10-13T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1318, 249, 2, CAST(N'2020-10-20T16:00:00' AS SmallDateTime), CAST(N'2020-10-20T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1319, 249, 2, CAST(N'2020-10-27T16:00:00' AS SmallDateTime), CAST(N'2020-10-27T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1320, 249, 2, CAST(N'2020-11-03T16:00:00' AS SmallDateTime), CAST(N'2020-11-03T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1321, 249, 2, CAST(N'2020-11-10T16:00:00' AS SmallDateTime), CAST(N'2020-11-10T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1322, 249, 2, CAST(N'2020-11-17T16:00:00' AS SmallDateTime), CAST(N'2020-11-17T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1323, 249, 2, CAST(N'2020-11-24T16:00:00' AS SmallDateTime), CAST(N'2020-11-24T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1324, 249, 2, CAST(N'2020-12-01T16:00:00' AS SmallDateTime), CAST(N'2020-12-01T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1325, 249, 2, CAST(N'2020-12-08T16:00:00' AS SmallDateTime), CAST(N'2020-12-08T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1326, 249, 2, CAST(N'2020-12-15T16:00:00' AS SmallDateTime), CAST(N'2020-12-15T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1327, 54, 1, CAST(N'2020-05-28T18:00:00' AS SmallDateTime), CAST(N'2020-05-28T18:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1328, 376, 6, CAST(N'2020-06-04T16:30:00' AS SmallDateTime), CAST(N'2020-06-04T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1329, 653, 6, CAST(N'2020-06-08T18:00:00' AS SmallDateTime), CAST(N'2020-06-08T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1330, 871, 3, CAST(N'2020-06-02T09:00:00' AS SmallDateTime), CAST(N'2020-06-02T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1331, 833, 3, CAST(N'2020-06-04T08:00:00' AS SmallDateTime), CAST(N'2020-06-04T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1332, 833, 3, CAST(N'2020-06-09T08:00:00' AS SmallDateTime), CAST(N'2020-06-09T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1333, 833, 3, CAST(N'2020-06-11T08:00:00' AS SmallDateTime), CAST(N'2020-06-11T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1334, 833, 3, CAST(N'2020-06-16T08:00:00' AS SmallDateTime), CAST(N'2020-06-16T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1335, 833, 3, CAST(N'2020-06-18T08:00:00' AS SmallDateTime), CAST(N'2020-06-18T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1336, 833, 3, CAST(N'2020-06-23T08:00:00' AS SmallDateTime), CAST(N'2020-06-23T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1337, 833, 3, CAST(N'2020-06-25T08:00:00' AS SmallDateTime), CAST(N'2020-06-25T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1338, 833, 3, CAST(N'2020-06-30T08:00:00' AS SmallDateTime), CAST(N'2020-06-30T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1339, 833, 3, CAST(N'2020-07-02T08:00:00' AS SmallDateTime), CAST(N'2020-07-02T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1340, 833, 3, CAST(N'2020-07-07T08:00:00' AS SmallDateTime), CAST(N'2020-07-07T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1341, 833, 3, CAST(N'2020-07-09T08:00:00' AS SmallDateTime), CAST(N'2020-07-09T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1342, 833, 3, CAST(N'2020-07-14T08:00:00' AS SmallDateTime), CAST(N'2020-07-14T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1343, 833, 3, CAST(N'2020-07-16T08:00:00' AS SmallDateTime), CAST(N'2020-07-16T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1344, 833, 3, CAST(N'2020-07-21T08:00:00' AS SmallDateTime), CAST(N'2020-07-21T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1345, 833, 3, CAST(N'2020-07-23T08:00:00' AS SmallDateTime), CAST(N'2020-07-23T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1346, 833, 3, CAST(N'2020-07-28T08:00:00' AS SmallDateTime), CAST(N'2020-07-28T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1347, 833, 3, CAST(N'2020-07-30T08:00:00' AS SmallDateTime), CAST(N'2020-07-30T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1348, 833, 3, CAST(N'2020-08-04T08:00:00' AS SmallDateTime), CAST(N'2020-08-04T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1349, 833, 3, CAST(N'2020-08-06T08:00:00' AS SmallDateTime), CAST(N'2020-08-06T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1350, 833, 3, CAST(N'2020-08-11T08:00:00' AS SmallDateTime), CAST(N'2020-08-11T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1351, 833, 3, CAST(N'2020-08-13T08:00:00' AS SmallDateTime), CAST(N'2020-08-13T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1352, 833, 3, CAST(N'2020-08-18T08:00:00' AS SmallDateTime), CAST(N'2020-08-18T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1353, 833, 3, CAST(N'2020-08-20T08:00:00' AS SmallDateTime), CAST(N'2020-08-20T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1354, 833, 3, CAST(N'2020-08-25T08:00:00' AS SmallDateTime), CAST(N'2020-08-25T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1355, 833, 3, CAST(N'2020-08-27T08:00:00' AS SmallDateTime), CAST(N'2020-08-27T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1356, 833, 3, CAST(N'2020-09-01T08:00:00' AS SmallDateTime), CAST(N'2020-09-01T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1357, 833, 3, CAST(N'2020-09-03T08:00:00' AS SmallDateTime), CAST(N'2020-09-03T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1358, 833, 3, CAST(N'2020-09-08T08:00:00' AS SmallDateTime), CAST(N'2020-09-08T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1359, 833, 3, CAST(N'2020-09-10T08:00:00' AS SmallDateTime), CAST(N'2020-09-10T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1360, 833, 3, CAST(N'2020-09-15T08:00:00' AS SmallDateTime), CAST(N'2020-09-15T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1361, 833, 3, CAST(N'2020-09-17T08:00:00' AS SmallDateTime), CAST(N'2020-09-17T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1362, 833, 3, CAST(N'2020-09-22T08:00:00' AS SmallDateTime), CAST(N'2020-09-22T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1363, 833, 3, CAST(N'2020-09-24T08:00:00' AS SmallDateTime), CAST(N'2020-09-24T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1364, 833, 3, CAST(N'2020-09-29T08:00:00' AS SmallDateTime), CAST(N'2020-09-29T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1365, 833, 3, CAST(N'2020-10-01T08:00:00' AS SmallDateTime), CAST(N'2020-10-01T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1366, 833, 3, CAST(N'2020-10-06T08:00:00' AS SmallDateTime), CAST(N'2020-10-06T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1367, 833, 3, CAST(N'2020-10-08T08:00:00' AS SmallDateTime), CAST(N'2020-10-08T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1368, 833, 3, CAST(N'2020-10-13T08:00:00' AS SmallDateTime), CAST(N'2020-10-13T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1369, 833, 3, CAST(N'2020-10-15T08:00:00' AS SmallDateTime), CAST(N'2020-10-15T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1370, 833, 3, CAST(N'2020-10-20T08:00:00' AS SmallDateTime), CAST(N'2020-10-20T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1371, 833, 3, CAST(N'2020-10-22T08:00:00' AS SmallDateTime), CAST(N'2020-10-22T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1372, 833, 3, CAST(N'2020-10-27T08:00:00' AS SmallDateTime), CAST(N'2020-10-27T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1373, 833, 3, CAST(N'2020-10-29T08:00:00' AS SmallDateTime), CAST(N'2020-10-29T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1374, 833, 3, CAST(N'2020-11-03T08:00:00' AS SmallDateTime), CAST(N'2020-11-03T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1375, 833, 3, CAST(N'2020-11-05T08:00:00' AS SmallDateTime), CAST(N'2020-11-05T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1376, 833, 3, CAST(N'2020-11-10T08:00:00' AS SmallDateTime), CAST(N'2020-11-10T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1377, 833, 3, CAST(N'2020-11-12T08:00:00' AS SmallDateTime), CAST(N'2020-11-12T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1378, 833, 3, CAST(N'2020-11-17T08:00:00' AS SmallDateTime), CAST(N'2020-11-17T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1379, 833, 3, CAST(N'2020-11-19T08:00:00' AS SmallDateTime), CAST(N'2020-11-19T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1380, 833, 3, CAST(N'2020-11-24T08:00:00' AS SmallDateTime), CAST(N'2020-11-24T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1381, 833, 3, CAST(N'2020-11-26T08:00:00' AS SmallDateTime), CAST(N'2020-11-26T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1382, 833, 3, CAST(N'2020-12-01T08:00:00' AS SmallDateTime), CAST(N'2020-12-01T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1383, 833, 3, CAST(N'2020-12-03T08:00:00' AS SmallDateTime), CAST(N'2020-12-03T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1384, 833, 3, CAST(N'2020-12-08T08:00:00' AS SmallDateTime), CAST(N'2020-12-08T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1385, 833, 3, CAST(N'2020-12-10T08:00:00' AS SmallDateTime), CAST(N'2020-12-10T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1386, 833, 3, CAST(N'2020-12-15T08:00:00' AS SmallDateTime), CAST(N'2020-12-15T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1387, 833, 3, CAST(N'2020-12-17T08:00:00' AS SmallDateTime), CAST(N'2020-12-17T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1388, 57, 3, CAST(N'2020-06-05T08:00:00' AS SmallDateTime), CAST(N'2020-06-05T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1389, 57, 3, CAST(N'2020-06-12T08:00:00' AS SmallDateTime), CAST(N'2020-06-12T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1390, 57, 3, CAST(N'2020-06-19T08:00:00' AS SmallDateTime), CAST(N'2020-06-19T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1391, 57, 3, CAST(N'2020-06-26T08:00:00' AS SmallDateTime), CAST(N'2020-06-26T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1392, 57, 3, CAST(N'2020-07-03T08:00:00' AS SmallDateTime), CAST(N'2020-07-03T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1393, 57, 3, CAST(N'2020-07-10T08:00:00' AS SmallDateTime), CAST(N'2020-07-10T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1394, 57, 3, CAST(N'2020-07-17T08:00:00' AS SmallDateTime), CAST(N'2020-07-17T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1395, 57, 3, CAST(N'2020-07-24T08:00:00' AS SmallDateTime), CAST(N'2020-07-24T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1396, 57, 3, CAST(N'2020-07-31T08:00:00' AS SmallDateTime), CAST(N'2020-07-31T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1397, 57, 3, CAST(N'2020-08-07T08:00:00' AS SmallDateTime), CAST(N'2020-08-07T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1398, 57, 3, CAST(N'2020-08-14T08:00:00' AS SmallDateTime), CAST(N'2020-08-14T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1399, 57, 3, CAST(N'2020-08-21T08:00:00' AS SmallDateTime), CAST(N'2020-08-21T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1400, 57, 3, CAST(N'2020-08-28T08:00:00' AS SmallDateTime), CAST(N'2020-08-28T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1401, 57, 3, CAST(N'2020-09-04T08:00:00' AS SmallDateTime), CAST(N'2020-09-04T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1402, 57, 3, CAST(N'2020-09-11T08:00:00' AS SmallDateTime), CAST(N'2020-09-11T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1403, 57, 3, CAST(N'2020-09-18T08:00:00' AS SmallDateTime), CAST(N'2020-09-18T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1404, 57, 3, CAST(N'2020-09-25T08:00:00' AS SmallDateTime), CAST(N'2020-09-25T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1405, 57, 3, CAST(N'2020-10-02T08:00:00' AS SmallDateTime), CAST(N'2020-10-02T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1406, 57, 3, CAST(N'2020-10-09T08:00:00' AS SmallDateTime), CAST(N'2020-10-09T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1407, 57, 3, CAST(N'2020-10-16T08:00:00' AS SmallDateTime), CAST(N'2020-10-16T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1408, 57, 3, CAST(N'2020-10-23T08:00:00' AS SmallDateTime), CAST(N'2020-10-23T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1409, 57, 3, CAST(N'2020-10-30T08:00:00' AS SmallDateTime), CAST(N'2020-10-30T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1410, 57, 3, CAST(N'2020-11-06T08:00:00' AS SmallDateTime), CAST(N'2020-11-06T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1411, 57, 3, CAST(N'2020-11-13T08:00:00' AS SmallDateTime), CAST(N'2020-11-13T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1412, 57, 3, CAST(N'2020-11-20T08:00:00' AS SmallDateTime), CAST(N'2020-11-20T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1413, 57, 3, CAST(N'2020-11-27T08:00:00' AS SmallDateTime), CAST(N'2020-11-27T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1414, 57, 3, CAST(N'2020-12-04T08:00:00' AS SmallDateTime), CAST(N'2020-12-04T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1415, 57, 3, CAST(N'2020-12-11T08:00:00' AS SmallDateTime), CAST(N'2020-12-11T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1416, 57, 3, CAST(N'2020-12-18T08:00:00' AS SmallDateTime), CAST(N'2020-12-18T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1417, 573, 2, CAST(N'2020-05-29T09:00:00' AS SmallDateTime), CAST(N'2020-05-29T09:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1418, 748, 2, CAST(N'2020-06-02T10:00:00' AS SmallDateTime), CAST(N'2020-06-02T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1419, 748, 2, CAST(N'2020-06-09T10:00:00' AS SmallDateTime), CAST(N'2020-06-09T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1420, 748, 2, CAST(N'2020-06-16T10:00:00' AS SmallDateTime), CAST(N'2020-06-16T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1421, 748, 2, CAST(N'2020-06-23T10:00:00' AS SmallDateTime), CAST(N'2020-06-23T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1422, 722, 2, CAST(N'2020-05-28T16:00:00' AS SmallDateTime), CAST(N'2020-05-28T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1423, 751, 6, CAST(N'2020-05-28T15:00:00' AS SmallDateTime), CAST(N'2020-05-28T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1424, 293, 2, CAST(N'2020-06-02T11:00:00' AS SmallDateTime), CAST(N'2020-06-02T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1425, 293, 2, CAST(N'2020-06-09T11:00:00' AS SmallDateTime), CAST(N'2020-06-09T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1426, 293, 2, CAST(N'2020-06-16T11:00:00' AS SmallDateTime), CAST(N'2020-06-16T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1427, 293, 2, CAST(N'2020-06-23T11:00:00' AS SmallDateTime), CAST(N'2020-06-23T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1428, 293, 2, CAST(N'2020-06-30T11:00:00' AS SmallDateTime), CAST(N'2020-06-30T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1429, 722, 2, CAST(N'2020-06-03T15:00:00' AS SmallDateTime), CAST(N'2020-06-03T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1430, 45, 2, CAST(N'2020-06-05T10:00:00' AS SmallDateTime), CAST(N'2020-06-05T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1431, 45, 2, CAST(N'2020-06-12T10:00:00' AS SmallDateTime), CAST(N'2020-06-12T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1432, 748, 2, CAST(N'2020-06-05T10:00:00' AS SmallDateTime), CAST(N'2020-06-05T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1433, 748, 2, CAST(N'2020-06-12T10:00:00' AS SmallDateTime), CAST(N'2020-06-12T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1434, 748, 2, CAST(N'2020-06-19T10:00:00' AS SmallDateTime), CAST(N'2020-06-19T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1435, 871, 3, CAST(N'2020-06-01T09:00:00' AS SmallDateTime), CAST(N'2020-06-01T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1436, 871, 3, CAST(N'2020-06-08T09:00:00' AS SmallDateTime), CAST(N'2020-06-08T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1437, 871, 3, CAST(N'2020-06-15T09:00:00' AS SmallDateTime), CAST(N'2020-06-15T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1438, 871, 3, CAST(N'2020-06-22T09:00:00' AS SmallDateTime), CAST(N'2020-06-22T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1439, 871, 3, CAST(N'2020-06-29T09:00:00' AS SmallDateTime), CAST(N'2020-06-29T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1440, 871, 3, CAST(N'2020-07-06T09:00:00' AS SmallDateTime), CAST(N'2020-07-06T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1441, 871, 3, CAST(N'2020-07-13T09:00:00' AS SmallDateTime), CAST(N'2020-07-13T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1442, 871, 3, CAST(N'2020-07-20T09:00:00' AS SmallDateTime), CAST(N'2020-07-20T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1443, 871, 3, CAST(N'2020-07-27T09:00:00' AS SmallDateTime), CAST(N'2020-07-27T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1444, 871, 3, CAST(N'2020-08-03T09:00:00' AS SmallDateTime), CAST(N'2020-08-03T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1445, 871, 3, CAST(N'2020-08-10T09:00:00' AS SmallDateTime), CAST(N'2020-08-10T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1446, 871, 3, CAST(N'2020-08-17T09:00:00' AS SmallDateTime), CAST(N'2020-08-17T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1447, 871, 3, CAST(N'2020-08-24T09:00:00' AS SmallDateTime), CAST(N'2020-08-24T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1448, 871, 3, CAST(N'2020-08-31T09:00:00' AS SmallDateTime), CAST(N'2020-08-31T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1449, 871, 3, CAST(N'2020-09-07T09:00:00' AS SmallDateTime), CAST(N'2020-09-07T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1450, 871, 3, CAST(N'2020-09-14T09:00:00' AS SmallDateTime), CAST(N'2020-09-14T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1451, 871, 3, CAST(N'2020-09-21T09:00:00' AS SmallDateTime), CAST(N'2020-09-21T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1452, 871, 3, CAST(N'2020-09-28T09:00:00' AS SmallDateTime), CAST(N'2020-09-28T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1453, 871, 3, CAST(N'2020-10-05T09:00:00' AS SmallDateTime), CAST(N'2020-10-05T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1454, 871, 3, CAST(N'2020-10-12T09:00:00' AS SmallDateTime), CAST(N'2020-10-12T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1455, 871, 3, CAST(N'2020-10-19T09:00:00' AS SmallDateTime), CAST(N'2020-10-19T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1456, 871, 3, CAST(N'2020-10-26T09:00:00' AS SmallDateTime), CAST(N'2020-10-26T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1457, 871, 3, CAST(N'2020-11-02T09:00:00' AS SmallDateTime), CAST(N'2020-11-02T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1458, 871, 3, CAST(N'2020-11-09T09:00:00' AS SmallDateTime), CAST(N'2020-11-09T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1459, 871, 3, CAST(N'2020-11-16T09:00:00' AS SmallDateTime), CAST(N'2020-11-16T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1460, 871, 3, CAST(N'2020-11-23T09:00:00' AS SmallDateTime), CAST(N'2020-11-23T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1461, 871, 3, CAST(N'2020-11-30T09:00:00' AS SmallDateTime), CAST(N'2020-11-30T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1462, 871, 3, CAST(N'2020-12-07T09:00:00' AS SmallDateTime), CAST(N'2020-12-07T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1463, 871, 3, CAST(N'2020-12-14T09:00:00' AS SmallDateTime), CAST(N'2020-12-14T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1464, 45, 1, CAST(N'2020-06-02T11:00:00' AS SmallDateTime), CAST(N'2020-06-02T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1465, 293, 2, CAST(N'2020-06-05T11:00:00' AS SmallDateTime), CAST(N'2020-06-05T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1466, 871, 3, CAST(N'2020-06-04T09:00:00' AS SmallDateTime), CAST(N'2020-06-04T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1467, 871, 3, CAST(N'2020-06-11T09:00:00' AS SmallDateTime), CAST(N'2020-06-11T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1468, 871, 3, CAST(N'2020-06-18T09:00:00' AS SmallDateTime), CAST(N'2020-06-18T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1469, 135, 1, CAST(N'2020-06-09T10:30:00' AS SmallDateTime), CAST(N'2020-06-09T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1470, 45, 1, CAST(N'2020-06-09T11:00:00' AS SmallDateTime), CAST(N'2020-06-09T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1471, 61, 1, CAST(N'2020-06-08T18:00:00' AS SmallDateTime), CAST(N'2020-06-08T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1472, 61, 1, CAST(N'2020-06-15T18:00:00' AS SmallDateTime), CAST(N'2020-06-15T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1473, 61, 1, CAST(N'2020-06-22T18:15:00' AS SmallDateTime), CAST(N'2020-06-22T19:15:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1474, 61, 1, CAST(N'2020-06-29T18:15:00' AS SmallDateTime), CAST(N'2020-06-29T19:15:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1475, 61, 1, CAST(N'2020-07-06T18:00:00' AS SmallDateTime), CAST(N'2020-07-06T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1476, 61, 1, CAST(N'2020-07-13T18:00:00' AS SmallDateTime), CAST(N'2020-07-13T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1477, 61, 1, CAST(N'2020-07-20T18:00:00' AS SmallDateTime), CAST(N'2020-07-20T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1478, 61, 1, CAST(N'2020-07-27T18:00:00' AS SmallDateTime), CAST(N'2020-07-27T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1479, 61, 1, CAST(N'2020-08-03T18:00:00' AS SmallDateTime), CAST(N'2020-08-03T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1480, 61, 1, CAST(N'2020-08-10T18:00:00' AS SmallDateTime), CAST(N'2020-08-10T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1481, 61, 1, CAST(N'2020-08-17T18:00:00' AS SmallDateTime), CAST(N'2020-08-17T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1482, 61, 1, CAST(N'2020-08-24T18:00:00' AS SmallDateTime), CAST(N'2020-08-24T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1483, 61, 1, CAST(N'2020-08-31T18:00:00' AS SmallDateTime), CAST(N'2020-08-31T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1484, 61, 1, CAST(N'2020-09-07T18:00:00' AS SmallDateTime), CAST(N'2020-09-07T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1485, 61, 1, CAST(N'2020-09-14T18:00:00' AS SmallDateTime), CAST(N'2020-09-14T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1486, 61, 1, CAST(N'2020-09-21T18:00:00' AS SmallDateTime), CAST(N'2020-09-21T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1487, 61, 1, CAST(N'2020-09-28T18:00:00' AS SmallDateTime), CAST(N'2020-09-28T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1488, 61, 1, CAST(N'2020-10-05T18:00:00' AS SmallDateTime), CAST(N'2020-10-05T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1489, 61, 1, CAST(N'2020-10-12T18:00:00' AS SmallDateTime), CAST(N'2020-10-12T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1490, 61, 1, CAST(N'2020-10-19T18:00:00' AS SmallDateTime), CAST(N'2020-10-19T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1491, 61, 1, CAST(N'2020-10-26T18:00:00' AS SmallDateTime), CAST(N'2020-10-26T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1492, 61, 1, CAST(N'2020-11-02T18:00:00' AS SmallDateTime), CAST(N'2020-11-02T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1493, 61, 1, CAST(N'2020-11-09T18:00:00' AS SmallDateTime), CAST(N'2020-11-09T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1494, 61, 1, CAST(N'2020-11-16T18:00:00' AS SmallDateTime), CAST(N'2020-11-16T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1495, 61, 1, CAST(N'2020-11-23T18:00:00' AS SmallDateTime), CAST(N'2020-11-23T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1496, 61, 1, CAST(N'2020-11-30T18:00:00' AS SmallDateTime), CAST(N'2020-11-30T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1497, 61, 1, CAST(N'2020-12-07T18:00:00' AS SmallDateTime), CAST(N'2020-12-07T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1498, 61, 1, CAST(N'2020-12-14T18:00:00' AS SmallDateTime), CAST(N'2020-12-14T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1499, 982, 6, CAST(N'2020-06-15T15:00:00' AS SmallDateTime), CAST(N'2020-06-15T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1500, 308, 6, CAST(N'2020-06-02T09:30:00' AS SmallDateTime), CAST(N'2020-06-02T10:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1501, 308, 6, CAST(N'2020-06-16T11:00:00' AS SmallDateTime), CAST(N'2020-06-16T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1502, 34, 5, CAST(N'2020-06-05T13:30:00' AS SmallDateTime), CAST(N'2020-06-05T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1503, 34, 5, CAST(N'2020-06-19T13:30:00' AS SmallDateTime), CAST(N'2020-06-19T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1504, 73, 6, CAST(N'2020-06-02T19:30:00' AS SmallDateTime), CAST(N'2020-06-02T20:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1505, 37, 5, CAST(N'2020-06-05T13:30:00' AS SmallDateTime), CAST(N'2020-06-05T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1506, 590, 6, CAST(N'2020-06-02T19:30:00' AS SmallDateTime), CAST(N'2020-06-02T20:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1507, 590, 6, CAST(N'2020-06-16T09:30:00' AS SmallDateTime), CAST(N'2020-06-16T10:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1508, 57, 3, CAST(N'2020-06-03T07:00:00' AS SmallDateTime), CAST(N'2020-06-03T08:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1509, 57, 3, CAST(N'2020-06-10T07:00:00' AS SmallDateTime), CAST(N'2020-06-10T08:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1510, 57, 3, CAST(N'2020-06-17T07:00:00' AS SmallDateTime), CAST(N'2020-06-17T08:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1511, 149, 5, CAST(N'2020-06-16T18:10:00' AS SmallDateTime), CAST(N'2020-06-16T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1512, 293, 2, CAST(N'2020-06-11T16:00:00' AS SmallDateTime), CAST(N'2020-06-11T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1513, 293, 2, CAST(N'2020-06-18T16:00:00' AS SmallDateTime), CAST(N'2020-06-18T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1514, 293, 2, CAST(N'2020-06-25T16:00:00' AS SmallDateTime), CAST(N'2020-06-25T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1515, 293, 2, CAST(N'2020-07-02T15:30:00' AS SmallDateTime), CAST(N'2020-07-02T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1516, 293, 2, CAST(N'2020-07-09T16:00:00' AS SmallDateTime), CAST(N'2020-07-09T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1517, 293, 2, CAST(N'2020-07-16T16:00:00' AS SmallDateTime), CAST(N'2020-07-16T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1518, 293, 2, CAST(N'2020-07-23T16:00:00' AS SmallDateTime), CAST(N'2020-07-23T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1519, 293, 2, CAST(N'2020-07-30T16:00:00' AS SmallDateTime), CAST(N'2020-07-30T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1520, 293, 2, CAST(N'2020-08-06T16:00:00' AS SmallDateTime), CAST(N'2020-08-06T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1521, 293, 2, CAST(N'2020-08-13T16:00:00' AS SmallDateTime), CAST(N'2020-08-13T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1522, 293, 2, CAST(N'2020-08-20T16:00:00' AS SmallDateTime), CAST(N'2020-08-20T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1523, 293, 2, CAST(N'2020-08-27T16:00:00' AS SmallDateTime), CAST(N'2020-08-27T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1524, 293, 2, CAST(N'2020-09-03T16:00:00' AS SmallDateTime), CAST(N'2020-09-03T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1525, 293, 2, CAST(N'2020-09-10T16:00:00' AS SmallDateTime), CAST(N'2020-09-10T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1526, 293, 2, CAST(N'2020-09-17T16:00:00' AS SmallDateTime), CAST(N'2020-09-17T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1527, 293, 2, CAST(N'2020-09-24T16:00:00' AS SmallDateTime), CAST(N'2020-09-24T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1528, 293, 2, CAST(N'2020-10-01T16:00:00' AS SmallDateTime), CAST(N'2020-10-01T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1529, 293, 2, CAST(N'2020-10-08T16:00:00' AS SmallDateTime), CAST(N'2020-10-08T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1530, 293, 2, CAST(N'2020-10-15T16:00:00' AS SmallDateTime), CAST(N'2020-10-15T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1531, 293, 2, CAST(N'2020-10-22T16:00:00' AS SmallDateTime), CAST(N'2020-10-22T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1532, 293, 2, CAST(N'2020-10-29T16:00:00' AS SmallDateTime), CAST(N'2020-10-29T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1533, 293, 2, CAST(N'2020-11-05T16:00:00' AS SmallDateTime), CAST(N'2020-11-05T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1534, 293, 2, CAST(N'2020-11-12T16:00:00' AS SmallDateTime), CAST(N'2020-11-12T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1535, 293, 2, CAST(N'2020-11-19T16:00:00' AS SmallDateTime), CAST(N'2020-11-19T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1536, 293, 2, CAST(N'2020-11-26T16:00:00' AS SmallDateTime), CAST(N'2020-11-26T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1537, 293, 2, CAST(N'2020-12-03T16:00:00' AS SmallDateTime), CAST(N'2020-12-03T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1538, 293, 2, CAST(N'2020-12-10T16:00:00' AS SmallDateTime), CAST(N'2020-12-10T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1539, 293, 2, CAST(N'2020-12-17T16:00:00' AS SmallDateTime), CAST(N'2020-12-17T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1540, 293, 2, CAST(N'2020-12-24T16:00:00' AS SmallDateTime), CAST(N'2020-12-24T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1541, 293, 2, CAST(N'2020-12-31T16:00:00' AS SmallDateTime), CAST(N'2020-12-31T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1542, 293, 2, CAST(N'2021-01-07T16:00:00' AS SmallDateTime), CAST(N'2021-01-07T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1543, 293, 2, CAST(N'2021-01-14T16:00:00' AS SmallDateTime), CAST(N'2021-01-14T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1544, 293, 2, CAST(N'2021-01-21T16:00:00' AS SmallDateTime), CAST(N'2021-01-21T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1545, 293, 2, CAST(N'2021-01-28T16:00:00' AS SmallDateTime), CAST(N'2021-01-28T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1546, 293, 2, CAST(N'2021-02-04T16:00:00' AS SmallDateTime), CAST(N'2021-02-04T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1547, 293, 2, CAST(N'2021-02-11T16:00:00' AS SmallDateTime), CAST(N'2021-02-11T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1548, 293, 2, CAST(N'2021-02-18T16:00:00' AS SmallDateTime), CAST(N'2021-02-18T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1549, 293, 2, CAST(N'2021-02-25T16:00:00' AS SmallDateTime), CAST(N'2021-02-25T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1550, 293, 2, CAST(N'2021-03-04T16:00:00' AS SmallDateTime), CAST(N'2021-03-04T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1551, 293, 2, CAST(N'2021-03-11T16:00:00' AS SmallDateTime), CAST(N'2021-03-11T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1552, 293, 2, CAST(N'2021-03-18T16:00:00' AS SmallDateTime), CAST(N'2021-03-18T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1553, 293, 2, CAST(N'2021-03-25T16:00:00' AS SmallDateTime), CAST(N'2021-03-25T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1554, 293, 2, CAST(N'2021-04-01T16:00:00' AS SmallDateTime), CAST(N'2021-04-01T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1555, 293, 2, CAST(N'2021-04-08T16:00:00' AS SmallDateTime), CAST(N'2021-04-08T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1556, 293, 2, CAST(N'2021-04-15T16:00:00' AS SmallDateTime), CAST(N'2021-04-15T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1557, 293, 2, CAST(N'2021-04-22T16:00:00' AS SmallDateTime), CAST(N'2021-04-22T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1558, 293, 2, CAST(N'2021-04-29T16:00:00' AS SmallDateTime), CAST(N'2021-04-29T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1559, 293, 2, CAST(N'2021-05-06T16:00:00' AS SmallDateTime), CAST(N'2021-05-06T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1560, 293, 2, CAST(N'2021-05-13T16:00:00' AS SmallDateTime), CAST(N'2021-05-13T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1561, 293, 2, CAST(N'2021-05-20T16:00:00' AS SmallDateTime), CAST(N'2021-05-20T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1562, 293, 2, CAST(N'2021-05-27T16:00:00' AS SmallDateTime), CAST(N'2021-05-27T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1563, 293, 2, CAST(N'2021-06-03T16:00:00' AS SmallDateTime), CAST(N'2021-06-03T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1564, 293, 2, CAST(N'2021-06-10T16:00:00' AS SmallDateTime), CAST(N'2021-06-10T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1565, 293, 2, CAST(N'2021-06-17T16:00:00' AS SmallDateTime), CAST(N'2021-06-17T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1566, 293, 2, CAST(N'2021-06-24T16:00:00' AS SmallDateTime), CAST(N'2021-06-24T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1567, 293, 2, CAST(N'2021-07-01T16:00:00' AS SmallDateTime), CAST(N'2021-07-01T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1568, 293, 2, CAST(N'2021-07-08T16:00:00' AS SmallDateTime), CAST(N'2021-07-08T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1569, 293, 2, CAST(N'2021-07-15T16:00:00' AS SmallDateTime), CAST(N'2021-07-15T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1570, 293, 2, CAST(N'2021-07-22T16:00:00' AS SmallDateTime), CAST(N'2021-07-22T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1571, 293, 2, CAST(N'2021-07-29T16:00:00' AS SmallDateTime), CAST(N'2021-07-29T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1572, 293, 2, CAST(N'2021-08-05T16:00:00' AS SmallDateTime), CAST(N'2021-08-05T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1573, 293, 2, CAST(N'2021-08-12T16:00:00' AS SmallDateTime), CAST(N'2021-08-12T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1574, 293, 2, CAST(N'2021-08-19T16:00:00' AS SmallDateTime), CAST(N'2021-08-19T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1575, 293, 2, CAST(N'2021-08-26T16:00:00' AS SmallDateTime), CAST(N'2021-08-26T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1576, 293, 2, CAST(N'2021-09-02T16:00:00' AS SmallDateTime), CAST(N'2021-09-02T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1577, 293, 2, CAST(N'2021-09-09T16:00:00' AS SmallDateTime), CAST(N'2021-09-09T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1578, 293, 2, CAST(N'2021-09-16T16:00:00' AS SmallDateTime), CAST(N'2021-09-16T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1579, 293, 2, CAST(N'2021-09-23T16:00:00' AS SmallDateTime), CAST(N'2021-09-23T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1580, 293, 2, CAST(N'2021-09-30T16:00:00' AS SmallDateTime), CAST(N'2021-09-30T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1581, 293, 2, CAST(N'2021-10-07T16:00:00' AS SmallDateTime), CAST(N'2021-10-07T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1582, 293, 2, CAST(N'2021-10-14T16:00:00' AS SmallDateTime), CAST(N'2021-10-14T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1583, 293, 2, CAST(N'2021-10-21T16:00:00' AS SmallDateTime), CAST(N'2021-10-21T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1584, 293, 2, CAST(N'2021-10-28T16:00:00' AS SmallDateTime), CAST(N'2021-10-28T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1585, 293, 2, CAST(N'2021-11-04T16:00:00' AS SmallDateTime), CAST(N'2021-11-04T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1586, 293, 2, CAST(N'2021-11-11T16:00:00' AS SmallDateTime), CAST(N'2021-11-11T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1587, 293, 2, CAST(N'2021-11-18T16:00:00' AS SmallDateTime), CAST(N'2021-11-18T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1588, 293, 2, CAST(N'2021-11-25T16:00:00' AS SmallDateTime), CAST(N'2021-11-25T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1589, 293, 2, CAST(N'2021-12-02T16:00:00' AS SmallDateTime), CAST(N'2021-12-02T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1590, 293, 2, CAST(N'2021-12-09T16:00:00' AS SmallDateTime), CAST(N'2021-12-09T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1591, 293, 2, CAST(N'2021-12-16T16:00:00' AS SmallDateTime), CAST(N'2021-12-16T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1592, 293, 2, CAST(N'2021-12-23T16:00:00' AS SmallDateTime), CAST(N'2021-12-23T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1593, 293, 2, CAST(N'2021-12-30T16:00:00' AS SmallDateTime), CAST(N'2021-12-30T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1594, 293, 2, CAST(N'2022-01-06T16:00:00' AS SmallDateTime), CAST(N'2022-01-06T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1595, 293, 2, CAST(N'2022-01-13T16:00:00' AS SmallDateTime), CAST(N'2022-01-13T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1596, 293, 2, CAST(N'2022-01-20T16:00:00' AS SmallDateTime), CAST(N'2022-01-20T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1597, 293, 2, CAST(N'2022-01-27T16:00:00' AS SmallDateTime), CAST(N'2022-01-27T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1598, 293, 2, CAST(N'2022-02-03T16:00:00' AS SmallDateTime), CAST(N'2022-02-03T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1599, 293, 2, CAST(N'2022-02-10T16:00:00' AS SmallDateTime), CAST(N'2022-02-10T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1600, 293, 2, CAST(N'2022-02-17T16:00:00' AS SmallDateTime), CAST(N'2022-02-17T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1601, 293, 2, CAST(N'2022-02-24T16:00:00' AS SmallDateTime), CAST(N'2022-02-24T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1602, 293, 2, CAST(N'2022-03-03T16:00:00' AS SmallDateTime), CAST(N'2022-03-03T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1603, 293, 2, CAST(N'2022-03-10T16:00:00' AS SmallDateTime), CAST(N'2022-03-10T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1604, 293, 2, CAST(N'2022-03-17T16:00:00' AS SmallDateTime), CAST(N'2022-03-17T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1605, 293, 2, CAST(N'2022-03-24T16:00:00' AS SmallDateTime), CAST(N'2022-03-24T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1606, 293, 2, CAST(N'2022-03-31T16:00:00' AS SmallDateTime), CAST(N'2022-03-31T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1607, 293, 2, CAST(N'2022-04-07T16:00:00' AS SmallDateTime), CAST(N'2022-04-07T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1608, 293, 2, CAST(N'2022-04-14T16:00:00' AS SmallDateTime), CAST(N'2022-04-14T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1609, 293, 2, CAST(N'2022-04-21T16:00:00' AS SmallDateTime), CAST(N'2022-04-21T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1610, 293, 2, CAST(N'2022-04-28T16:00:00' AS SmallDateTime), CAST(N'2022-04-28T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1611, 293, 2, CAST(N'2022-05-05T16:00:00' AS SmallDateTime), CAST(N'2022-05-05T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1612, 293, 2, CAST(N'2022-05-12T16:00:00' AS SmallDateTime), CAST(N'2022-05-12T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1613, 293, 2, CAST(N'2022-05-19T16:00:00' AS SmallDateTime), CAST(N'2022-05-19T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1614, 293, 2, CAST(N'2022-05-26T16:00:00' AS SmallDateTime), CAST(N'2022-05-26T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1615, 293, 2, CAST(N'2022-06-02T16:00:00' AS SmallDateTime), CAST(N'2022-06-02T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1616, 293, 2, CAST(N'2022-06-09T16:00:00' AS SmallDateTime), CAST(N'2022-06-09T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1617, 293, 2, CAST(N'2022-06-16T16:00:00' AS SmallDateTime), CAST(N'2022-06-16T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1618, 293, 2, CAST(N'2022-06-23T16:00:00' AS SmallDateTime), CAST(N'2022-06-23T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1619, 293, 2, CAST(N'2022-06-30T16:00:00' AS SmallDateTime), CAST(N'2022-06-30T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1620, 293, 2, CAST(N'2022-07-07T16:00:00' AS SmallDateTime), CAST(N'2022-07-07T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1621, 293, 2, CAST(N'2022-07-14T16:00:00' AS SmallDateTime), CAST(N'2022-07-14T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1622, 293, 2, CAST(N'2022-07-21T16:00:00' AS SmallDateTime), CAST(N'2022-07-21T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1623, 293, 2, CAST(N'2022-07-28T16:00:00' AS SmallDateTime), CAST(N'2022-07-28T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1624, 293, 2, CAST(N'2022-08-04T16:00:00' AS SmallDateTime), CAST(N'2022-08-04T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1625, 293, 2, CAST(N'2022-08-11T16:00:00' AS SmallDateTime), CAST(N'2022-08-11T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1626, 293, 2, CAST(N'2022-08-18T16:00:00' AS SmallDateTime), CAST(N'2022-08-18T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1627, 293, 2, CAST(N'2022-08-25T16:00:00' AS SmallDateTime), CAST(N'2022-08-25T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1628, 293, 2, CAST(N'2022-09-01T16:00:00' AS SmallDateTime), CAST(N'2022-09-01T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1629, 293, 2, CAST(N'2022-09-08T16:00:00' AS SmallDateTime), CAST(N'2022-09-08T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1630, 293, 2, CAST(N'2022-09-15T16:00:00' AS SmallDateTime), CAST(N'2022-09-15T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1631, 293, 2, CAST(N'2022-09-22T16:00:00' AS SmallDateTime), CAST(N'2022-09-22T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1632, 293, 2, CAST(N'2022-09-29T16:00:00' AS SmallDateTime), CAST(N'2022-09-29T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1633, 293, 2, CAST(N'2022-10-06T16:00:00' AS SmallDateTime), CAST(N'2022-10-06T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1634, 293, 2, CAST(N'2022-10-13T16:00:00' AS SmallDateTime), CAST(N'2022-10-13T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1635, 293, 2, CAST(N'2022-10-20T16:00:00' AS SmallDateTime), CAST(N'2022-10-20T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1636, 293, 2, CAST(N'2022-10-27T16:00:00' AS SmallDateTime), CAST(N'2022-10-27T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1637, 293, 2, CAST(N'2022-11-03T16:00:00' AS SmallDateTime), CAST(N'2022-11-03T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1638, 293, 2, CAST(N'2022-11-10T16:00:00' AS SmallDateTime), CAST(N'2022-11-10T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1639, 293, 2, CAST(N'2022-11-17T16:00:00' AS SmallDateTime), CAST(N'2022-11-17T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1640, 293, 2, CAST(N'2022-11-24T16:00:00' AS SmallDateTime), CAST(N'2022-11-24T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1641, 293, 2, CAST(N'2022-12-01T16:00:00' AS SmallDateTime), CAST(N'2022-12-01T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1642, 293, 2, CAST(N'2022-12-08T16:00:00' AS SmallDateTime), CAST(N'2022-12-08T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1643, 293, 2, CAST(N'2022-12-15T16:00:00' AS SmallDateTime), CAST(N'2022-12-15T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1644, 54, 1, CAST(N'2020-06-04T18:00:00' AS SmallDateTime), CAST(N'2020-06-04T18:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1645, 722, 6, CAST(N'2020-06-12T11:00:00' AS SmallDateTime), CAST(N'2020-06-12T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1646, 722, 2, CAST(N'2020-06-08T15:00:00' AS SmallDateTime), CAST(N'2020-06-08T15:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1647, 149, 4, CAST(N'2020-06-05T18:00:00' AS SmallDateTime), CAST(N'2020-06-05T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1648, 376, 6, CAST(N'2020-06-18T13:30:00' AS SmallDateTime), CAST(N'2020-06-18T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1649, 169, 2, CAST(N'2020-06-18T10:00:00' AS SmallDateTime), CAST(N'2020-06-18T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1650, 169, 2, CAST(N'2020-06-25T10:00:00' AS SmallDateTime), CAST(N'2020-06-25T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1651, 169, 2, CAST(N'2020-07-02T10:00:00' AS SmallDateTime), CAST(N'2020-07-02T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1652, 169, 2, CAST(N'2020-07-09T10:00:00' AS SmallDateTime), CAST(N'2020-07-09T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1653, 169, 2, CAST(N'2020-07-16T10:00:00' AS SmallDateTime), CAST(N'2020-07-16T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1654, 169, 2, CAST(N'2020-07-23T10:00:00' AS SmallDateTime), CAST(N'2020-07-23T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1655, 169, 2, CAST(N'2020-07-30T10:00:00' AS SmallDateTime), CAST(N'2020-07-30T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1656, 169, 2, CAST(N'2020-08-06T10:00:00' AS SmallDateTime), CAST(N'2020-08-06T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1657, 169, 2, CAST(N'2020-08-13T10:00:00' AS SmallDateTime), CAST(N'2020-08-13T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1658, 169, 2, CAST(N'2020-08-20T10:00:00' AS SmallDateTime), CAST(N'2020-08-20T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1659, 169, 2, CAST(N'2020-08-27T10:00:00' AS SmallDateTime), CAST(N'2020-08-27T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1660, 169, 2, CAST(N'2020-09-03T10:00:00' AS SmallDateTime), CAST(N'2020-09-03T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1661, 169, 2, CAST(N'2020-09-10T10:00:00' AS SmallDateTime), CAST(N'2020-09-10T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1662, 169, 2, CAST(N'2020-09-17T10:00:00' AS SmallDateTime), CAST(N'2020-09-17T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1663, 169, 2, CAST(N'2020-09-24T10:00:00' AS SmallDateTime), CAST(N'2020-09-24T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1664, 169, 2, CAST(N'2020-10-01T10:00:00' AS SmallDateTime), CAST(N'2020-10-01T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1665, 169, 2, CAST(N'2020-10-08T10:00:00' AS SmallDateTime), CAST(N'2020-10-08T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1666, 169, 2, CAST(N'2020-10-15T10:00:00' AS SmallDateTime), CAST(N'2020-10-15T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1667, 169, 2, CAST(N'2020-10-22T10:00:00' AS SmallDateTime), CAST(N'2020-10-22T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1668, 169, 2, CAST(N'2020-10-29T10:00:00' AS SmallDateTime), CAST(N'2020-10-29T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1669, 169, 2, CAST(N'2020-11-05T10:00:00' AS SmallDateTime), CAST(N'2020-11-05T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1670, 169, 2, CAST(N'2020-11-12T10:00:00' AS SmallDateTime), CAST(N'2020-11-12T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1671, 169, 2, CAST(N'2020-11-19T10:00:00' AS SmallDateTime), CAST(N'2020-11-19T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1672, 169, 2, CAST(N'2020-11-26T10:00:00' AS SmallDateTime), CAST(N'2020-11-26T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1673, 169, 2, CAST(N'2020-12-03T10:00:00' AS SmallDateTime), CAST(N'2020-12-03T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1674, 169, 2, CAST(N'2020-12-10T10:00:00' AS SmallDateTime), CAST(N'2020-12-10T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1675, 169, 2, CAST(N'2020-12-17T10:00:00' AS SmallDateTime), CAST(N'2020-12-17T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1676, 175, 6, CAST(N'2020-06-18T15:00:00' AS SmallDateTime), CAST(N'2020-06-18T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1677, 748, 2, CAST(N'2020-06-10T10:00:00' AS SmallDateTime), CAST(N'2020-06-10T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1678, 416, 11, CAST(N'2020-06-25T08:00:00' AS SmallDateTime), CAST(N'2020-06-25T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1679, 61, 1, CAST(N'2020-06-10T19:00:00' AS SmallDateTime), CAST(N'2020-06-10T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1680, 45, 1, CAST(N'2020-06-16T11:00:00' AS SmallDateTime), CAST(N'2020-06-16T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1681, 161, 1, CAST(N'2020-06-15T18:00:00' AS SmallDateTime), CAST(N'2020-06-15T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1682, 308, 6, CAST(N'2020-06-09T16:30:00' AS SmallDateTime), CAST(N'2020-06-09T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1683, 152, 6, CAST(N'2020-06-09T18:00:00' AS SmallDateTime), CAST(N'2020-06-09T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1684, 54, 1, CAST(N'2020-06-09T14:15:00' AS SmallDateTime), CAST(N'2020-06-09T14:45:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1685, 952, 6, CAST(N'2020-06-22T15:00:00' AS SmallDateTime), CAST(N'2020-06-22T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1686, 653, 6, CAST(N'2020-06-22T18:00:00' AS SmallDateTime), CAST(N'2020-06-22T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1687, 135, 1, CAST(N'2020-06-16T18:00:00' AS SmallDateTime), CAST(N'2020-06-16T18:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1688, 748, 6, CAST(N'2020-06-15T18:00:00' AS SmallDateTime), CAST(N'2020-06-15T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1689, 86, 1, CAST(N'2020-06-10T13:30:00' AS SmallDateTime), CAST(N'2020-06-10T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1690, 45, 4, CAST(N'2020-06-15T11:00:00' AS SmallDateTime), CAST(N'2020-06-15T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1691, 45, 4, CAST(N'2020-06-22T11:00:00' AS SmallDateTime), CAST(N'2020-06-22T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1692, 45, 4, CAST(N'2020-06-29T11:00:00' AS SmallDateTime), CAST(N'2020-06-29T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1693, 45, 4, CAST(N'2020-07-06T11:00:00' AS SmallDateTime), CAST(N'2020-07-06T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1694, 45, 4, CAST(N'2020-07-13T11:00:00' AS SmallDateTime), CAST(N'2020-07-13T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1695, 45, 4, CAST(N'2020-07-20T11:00:00' AS SmallDateTime), CAST(N'2020-07-20T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1696, 45, 4, CAST(N'2020-07-27T11:00:00' AS SmallDateTime), CAST(N'2020-07-27T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1697, 45, 4, CAST(N'2020-08-03T11:00:00' AS SmallDateTime), CAST(N'2020-08-03T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1698, 45, 4, CAST(N'2020-08-10T11:00:00' AS SmallDateTime), CAST(N'2020-08-10T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1699, 45, 4, CAST(N'2020-08-17T11:00:00' AS SmallDateTime), CAST(N'2020-08-17T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1700, 45, 4, CAST(N'2020-08-24T11:00:00' AS SmallDateTime), CAST(N'2020-08-24T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1701, 45, 4, CAST(N'2020-08-31T11:00:00' AS SmallDateTime), CAST(N'2020-08-31T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1702, 45, 4, CAST(N'2020-09-07T11:00:00' AS SmallDateTime), CAST(N'2020-09-07T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1703, 45, 4, CAST(N'2020-09-14T11:00:00' AS SmallDateTime), CAST(N'2020-09-14T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1704, 45, 4, CAST(N'2020-09-21T11:00:00' AS SmallDateTime), CAST(N'2020-09-21T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1705, 45, 4, CAST(N'2020-09-28T11:00:00' AS SmallDateTime), CAST(N'2020-09-28T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1706, 45, 4, CAST(N'2020-10-05T11:00:00' AS SmallDateTime), CAST(N'2020-10-05T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1707, 45, 4, CAST(N'2020-10-12T11:00:00' AS SmallDateTime), CAST(N'2020-10-12T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1708, 45, 4, CAST(N'2020-10-19T11:00:00' AS SmallDateTime), CAST(N'2020-10-19T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1709, 45, 4, CAST(N'2020-10-26T11:00:00' AS SmallDateTime), CAST(N'2020-10-26T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1710, 45, 4, CAST(N'2020-11-02T11:00:00' AS SmallDateTime), CAST(N'2020-11-02T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1711, 45, 4, CAST(N'2020-11-09T11:00:00' AS SmallDateTime), CAST(N'2020-11-09T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1712, 45, 4, CAST(N'2020-11-16T11:00:00' AS SmallDateTime), CAST(N'2020-11-16T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1713, 45, 4, CAST(N'2020-11-23T11:00:00' AS SmallDateTime), CAST(N'2020-11-23T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1714, 45, 4, CAST(N'2020-11-30T11:00:00' AS SmallDateTime), CAST(N'2020-11-30T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1715, 45, 4, CAST(N'2020-12-07T11:00:00' AS SmallDateTime), CAST(N'2020-12-07T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1716, 45, 4, CAST(N'2020-12-14T11:00:00' AS SmallDateTime), CAST(N'2020-12-14T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1717, 45, 4, CAST(N'2020-06-19T10:00:00' AS SmallDateTime), CAST(N'2020-06-19T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1718, 45, 4, CAST(N'2020-06-26T10:00:00' AS SmallDateTime), CAST(N'2020-06-26T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1719, 45, 4, CAST(N'2020-07-03T10:00:00' AS SmallDateTime), CAST(N'2020-07-03T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1720, 45, 4, CAST(N'2020-07-10T10:00:00' AS SmallDateTime), CAST(N'2020-07-10T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1721, 45, 4, CAST(N'2020-07-17T10:00:00' AS SmallDateTime), CAST(N'2020-07-17T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1722, 45, 4, CAST(N'2020-07-24T10:00:00' AS SmallDateTime), CAST(N'2020-07-24T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1723, 45, 4, CAST(N'2020-07-31T10:00:00' AS SmallDateTime), CAST(N'2020-07-31T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1724, 45, 4, CAST(N'2020-08-07T10:00:00' AS SmallDateTime), CAST(N'2020-08-07T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1725, 45, 4, CAST(N'2020-08-14T10:00:00' AS SmallDateTime), CAST(N'2020-08-14T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1726, 45, 4, CAST(N'2020-08-21T10:00:00' AS SmallDateTime), CAST(N'2020-08-21T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1727, 45, 4, CAST(N'2020-08-28T10:00:00' AS SmallDateTime), CAST(N'2020-08-28T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1728, 45, 4, CAST(N'2020-09-04T10:00:00' AS SmallDateTime), CAST(N'2020-09-04T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1729, 45, 4, CAST(N'2020-09-11T10:00:00' AS SmallDateTime), CAST(N'2020-09-11T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1730, 45, 4, CAST(N'2020-09-18T10:00:00' AS SmallDateTime), CAST(N'2020-09-18T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1731, 45, 4, CAST(N'2020-09-25T10:00:00' AS SmallDateTime), CAST(N'2020-09-25T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1732, 45, 4, CAST(N'2020-10-02T10:00:00' AS SmallDateTime), CAST(N'2020-10-02T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1733, 45, 4, CAST(N'2020-10-09T10:00:00' AS SmallDateTime), CAST(N'2020-10-09T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1734, 45, 4, CAST(N'2020-10-16T10:00:00' AS SmallDateTime), CAST(N'2020-10-16T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1735, 45, 4, CAST(N'2020-10-23T10:00:00' AS SmallDateTime), CAST(N'2020-10-23T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1736, 45, 4, CAST(N'2020-10-30T10:00:00' AS SmallDateTime), CAST(N'2020-10-30T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1737, 45, 4, CAST(N'2020-11-06T10:00:00' AS SmallDateTime), CAST(N'2020-11-06T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1738, 45, 4, CAST(N'2020-11-13T10:00:00' AS SmallDateTime), CAST(N'2020-11-13T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1739, 45, 4, CAST(N'2020-11-20T10:00:00' AS SmallDateTime), CAST(N'2020-11-20T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1740, 45, 4, CAST(N'2020-11-27T10:00:00' AS SmallDateTime), CAST(N'2020-11-27T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1741, 45, 4, CAST(N'2020-12-04T10:00:00' AS SmallDateTime), CAST(N'2020-12-04T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1742, 45, 4, CAST(N'2020-12-11T10:00:00' AS SmallDateTime), CAST(N'2020-12-11T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1743, 45, 4, CAST(N'2020-12-18T10:00:00' AS SmallDateTime), CAST(N'2020-12-18T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1744, 135, 5, CAST(N'2020-06-18T10:30:00' AS SmallDateTime), CAST(N'2020-06-18T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1745, 135, 5, CAST(N'2020-06-25T10:30:00' AS SmallDateTime), CAST(N'2020-06-25T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1746, 135, 5, CAST(N'2020-07-02T10:30:00' AS SmallDateTime), CAST(N'2020-07-02T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1747, 135, 5, CAST(N'2020-07-09T10:30:00' AS SmallDateTime), CAST(N'2020-07-09T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1748, 135, 5, CAST(N'2020-07-16T10:30:00' AS SmallDateTime), CAST(N'2020-07-16T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1749, 135, 5, CAST(N'2020-07-23T10:30:00' AS SmallDateTime), CAST(N'2020-07-23T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1750, 135, 5, CAST(N'2020-07-30T10:30:00' AS SmallDateTime), CAST(N'2020-07-30T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1751, 135, 5, CAST(N'2020-08-06T10:30:00' AS SmallDateTime), CAST(N'2020-08-06T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1752, 135, 5, CAST(N'2020-08-13T10:30:00' AS SmallDateTime), CAST(N'2020-08-13T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1753, 135, 5, CAST(N'2020-08-20T10:30:00' AS SmallDateTime), CAST(N'2020-08-20T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1754, 135, 5, CAST(N'2020-08-27T10:30:00' AS SmallDateTime), CAST(N'2020-08-27T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1755, 135, 5, CAST(N'2020-09-03T10:30:00' AS SmallDateTime), CAST(N'2020-09-03T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1756, 135, 5, CAST(N'2020-09-10T10:30:00' AS SmallDateTime), CAST(N'2020-09-10T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1757, 135, 5, CAST(N'2020-09-17T10:30:00' AS SmallDateTime), CAST(N'2020-09-17T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1758, 135, 5, CAST(N'2020-09-24T10:30:00' AS SmallDateTime), CAST(N'2020-09-24T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1759, 135, 5, CAST(N'2020-10-01T10:30:00' AS SmallDateTime), CAST(N'2020-10-01T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1760, 135, 5, CAST(N'2020-10-08T10:30:00' AS SmallDateTime), CAST(N'2020-10-08T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1761, 135, 5, CAST(N'2020-10-15T10:30:00' AS SmallDateTime), CAST(N'2020-10-15T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1762, 135, 5, CAST(N'2020-10-22T10:30:00' AS SmallDateTime), CAST(N'2020-10-22T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1763, 135, 5, CAST(N'2020-10-29T10:30:00' AS SmallDateTime), CAST(N'2020-10-29T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1764, 135, 5, CAST(N'2020-11-05T10:30:00' AS SmallDateTime), CAST(N'2020-11-05T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1765, 135, 5, CAST(N'2020-11-12T10:30:00' AS SmallDateTime), CAST(N'2020-11-12T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1766, 135, 5, CAST(N'2020-11-19T10:30:00' AS SmallDateTime), CAST(N'2020-11-19T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1767, 135, 5, CAST(N'2020-11-26T10:30:00' AS SmallDateTime), CAST(N'2020-11-26T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1768, 135, 5, CAST(N'2020-12-03T10:30:00' AS SmallDateTime), CAST(N'2020-12-03T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1769, 135, 5, CAST(N'2020-12-10T10:30:00' AS SmallDateTime), CAST(N'2020-12-10T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1770, 135, 5, CAST(N'2020-12-17T10:30:00' AS SmallDateTime), CAST(N'2020-12-17T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1771, 86, 1, CAST(N'2020-06-17T13:30:00' AS SmallDateTime), CAST(N'2020-06-17T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1772, 86, 1, CAST(N'2020-06-24T13:30:00' AS SmallDateTime), CAST(N'2020-06-24T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1773, 86, 1, CAST(N'2020-07-01T13:30:00' AS SmallDateTime), CAST(N'2020-07-01T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1774, 86, 1, CAST(N'2020-07-08T13:30:00' AS SmallDateTime), CAST(N'2020-07-08T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1775, 86, 1, CAST(N'2020-07-15T13:30:00' AS SmallDateTime), CAST(N'2020-07-15T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1776, 86, 1, CAST(N'2020-07-22T13:30:00' AS SmallDateTime), CAST(N'2020-07-22T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1777, 86, 1, CAST(N'2020-07-29T13:30:00' AS SmallDateTime), CAST(N'2020-07-29T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1778, 86, 1, CAST(N'2020-08-05T13:30:00' AS SmallDateTime), CAST(N'2020-08-05T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1779, 86, 1, CAST(N'2020-08-12T13:30:00' AS SmallDateTime), CAST(N'2020-08-12T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1780, 86, 1, CAST(N'2020-08-19T13:30:00' AS SmallDateTime), CAST(N'2020-08-19T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1781, 86, 1, CAST(N'2020-08-26T13:30:00' AS SmallDateTime), CAST(N'2020-08-26T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1782, 871, 3, CAST(N'2020-06-19T09:57:00' AS SmallDateTime), CAST(N'2020-06-19T10:45:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1783, 856, 6, CAST(N'2020-06-15T16:30:00' AS SmallDateTime), CAST(N'2020-06-15T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1784, 590, 6, CAST(N'2020-06-23T18:00:00' AS SmallDateTime), CAST(N'2020-06-23T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1785, 308, 6, CAST(N'2020-06-23T16:30:00' AS SmallDateTime), CAST(N'2020-06-23T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1786, 73, 6, CAST(N'2020-06-18T19:30:00' AS SmallDateTime), CAST(N'2020-06-18T20:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1787, 982, 6, CAST(N'2020-06-29T15:00:00' AS SmallDateTime), CAST(N'2020-06-29T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1788, 252, 5, CAST(N'2020-06-17T14:00:00' AS SmallDateTime), CAST(N'2020-06-17T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1789, 161, 1, CAST(N'2020-06-30T19:15:00' AS SmallDateTime), CAST(N'2020-06-30T20:15:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1790, 833, 3, CAST(N'2020-06-19T09:00:00' AS SmallDateTime), CAST(N'2020-06-19T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1791, 1089, 6, CAST(N'2020-06-22T16:30:00' AS SmallDateTime), CAST(N'2020-06-22T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1792, 37, 1, CAST(N'2020-06-19T10:00:00' AS SmallDateTime), CAST(N'2020-06-19T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1793, 149, 5, CAST(N'2020-07-14T20:15:00' AS SmallDateTime), CAST(N'2020-07-14T21:15:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1794, 1157, 6, CAST(N'2020-06-18T16:30:00' AS SmallDateTime), CAST(N'2020-06-18T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1795, 252, 5, CAST(N'2020-06-22T14:00:00' AS SmallDateTime), CAST(N'2020-06-22T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1796, 37, 1, CAST(N'2020-06-18T18:00:00' AS SmallDateTime), CAST(N'2020-06-18T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1797, 175, 6, CAST(N'2020-06-25T16:30:00' AS SmallDateTime), CAST(N'2020-06-25T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1798, 73, 6, CAST(N'2020-07-02T19:30:00' AS SmallDateTime), CAST(N'2020-07-02T20:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1799, 8, 1, CAST(N'2020-06-19T19:00:00' AS SmallDateTime), CAST(N'2020-06-19T20:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1800, 8, 1, CAST(N'2020-06-25T18:00:00' AS SmallDateTime), CAST(N'2020-06-25T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1801, 952, 6, CAST(N'2020-06-30T15:00:00' AS SmallDateTime), CAST(N'2020-06-30T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1802, 57, 3, CAST(N'2020-06-24T08:00:00' AS SmallDateTime), CAST(N'2020-06-24T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1803, 57, 3, CAST(N'2020-07-01T08:00:00' AS SmallDateTime), CAST(N'2020-07-01T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1804, 57, 3, CAST(N'2020-07-08T08:00:00' AS SmallDateTime), CAST(N'2020-07-08T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1805, 57, 3, CAST(N'2020-07-15T08:00:00' AS SmallDateTime), CAST(N'2020-07-15T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1806, 57, 3, CAST(N'2020-07-22T08:00:00' AS SmallDateTime), CAST(N'2020-07-22T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1807, 57, 3, CAST(N'2020-07-29T08:00:00' AS SmallDateTime), CAST(N'2020-07-29T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1808, 57, 3, CAST(N'2020-08-05T08:00:00' AS SmallDateTime), CAST(N'2020-08-05T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1809, 57, 3, CAST(N'2020-08-12T08:00:00' AS SmallDateTime), CAST(N'2020-08-12T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1810, 57, 3, CAST(N'2020-08-19T08:00:00' AS SmallDateTime), CAST(N'2020-08-19T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1811, 57, 3, CAST(N'2020-08-26T08:00:00' AS SmallDateTime), CAST(N'2020-08-26T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1812, 57, 3, CAST(N'2020-09-02T08:00:00' AS SmallDateTime), CAST(N'2020-09-02T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1813, 57, 3, CAST(N'2020-09-09T08:00:00' AS SmallDateTime), CAST(N'2020-09-09T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1814, 57, 3, CAST(N'2020-09-16T08:00:00' AS SmallDateTime), CAST(N'2020-09-16T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1815, 57, 3, CAST(N'2020-09-23T08:00:00' AS SmallDateTime), CAST(N'2020-09-23T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1816, 57, 3, CAST(N'2020-09-30T08:00:00' AS SmallDateTime), CAST(N'2020-09-30T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1817, 57, 3, CAST(N'2020-10-07T08:00:00' AS SmallDateTime), CAST(N'2020-10-07T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1818, 57, 3, CAST(N'2020-10-14T08:00:00' AS SmallDateTime), CAST(N'2020-10-14T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1819, 57, 3, CAST(N'2020-10-21T08:00:00' AS SmallDateTime), CAST(N'2020-10-21T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1820, 57, 3, CAST(N'2020-10-28T08:00:00' AS SmallDateTime), CAST(N'2020-10-28T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1821, 57, 3, CAST(N'2020-11-04T08:00:00' AS SmallDateTime), CAST(N'2020-11-04T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1822, 57, 3, CAST(N'2020-11-11T08:00:00' AS SmallDateTime), CAST(N'2020-11-11T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1823, 57, 3, CAST(N'2020-11-18T08:00:00' AS SmallDateTime), CAST(N'2020-11-18T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1824, 57, 3, CAST(N'2020-11-25T08:00:00' AS SmallDateTime), CAST(N'2020-11-25T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1825, 57, 3, CAST(N'2020-12-02T08:00:00' AS SmallDateTime), CAST(N'2020-12-02T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1826, 57, 3, CAST(N'2020-12-09T08:00:00' AS SmallDateTime), CAST(N'2020-12-09T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1827, 57, 3, CAST(N'2020-12-16T08:00:00' AS SmallDateTime), CAST(N'2020-12-16T09:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1828, 871, 3, CAST(N'2020-06-26T10:00:00' AS SmallDateTime), CAST(N'2020-06-26T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1829, 61, 1, CAST(N'2020-06-25T19:30:00' AS SmallDateTime), CAST(N'2020-06-25T20:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1830, 376, 6, CAST(N'2020-06-23T15:00:00' AS SmallDateTime), CAST(N'2020-06-23T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1831, 804, 6, CAST(N'2020-06-26T10:30:00' AS SmallDateTime), CAST(N'2020-06-26T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1832, 45, 1, CAST(N'2020-06-30T11:00:00' AS SmallDateTime), CAST(N'2020-06-30T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1833, 653, 6, CAST(N'2020-07-20T18:00:00' AS SmallDateTime), CAST(N'2020-07-20T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1834, 303, 6, CAST(N'2020-06-26T09:00:00' AS SmallDateTime), CAST(N'2020-06-26T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1835, 180, 3, CAST(N'2020-06-23T18:00:00' AS SmallDateTime), CAST(N'2020-06-23T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1836, 126, 2, CAST(N'2020-07-06T15:00:00' AS SmallDateTime), CAST(N'2020-07-06T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1837, 126, 2, CAST(N'2020-07-13T15:00:00' AS SmallDateTime), CAST(N'2020-07-13T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1838, 126, 2, CAST(N'2020-07-20T15:00:00' AS SmallDateTime), CAST(N'2020-07-20T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1839, 126, 2, CAST(N'2020-07-27T15:00:00' AS SmallDateTime), CAST(N'2020-07-27T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1840, 126, 2, CAST(N'2020-08-03T15:00:00' AS SmallDateTime), CAST(N'2020-08-03T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1841, 126, 2, CAST(N'2020-08-10T15:00:00' AS SmallDateTime), CAST(N'2020-08-10T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1842, 126, 2, CAST(N'2020-08-17T15:00:00' AS SmallDateTime), CAST(N'2020-08-17T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1843, 126, 2, CAST(N'2020-08-24T15:00:00' AS SmallDateTime), CAST(N'2020-08-24T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1844, 126, 2, CAST(N'2020-08-31T15:00:00' AS SmallDateTime), CAST(N'2020-08-31T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1845, 126, 2, CAST(N'2020-09-07T15:00:00' AS SmallDateTime), CAST(N'2020-09-07T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1846, 126, 2, CAST(N'2020-09-14T15:00:00' AS SmallDateTime), CAST(N'2020-09-14T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1847, 126, 2, CAST(N'2020-09-21T15:00:00' AS SmallDateTime), CAST(N'2020-09-21T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1848, 126, 2, CAST(N'2020-09-28T15:00:00' AS SmallDateTime), CAST(N'2020-09-28T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1849, 126, 2, CAST(N'2020-10-05T15:00:00' AS SmallDateTime), CAST(N'2020-10-05T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1850, 126, 2, CAST(N'2020-10-12T15:00:00' AS SmallDateTime), CAST(N'2020-10-12T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1851, 126, 2, CAST(N'2020-10-19T15:00:00' AS SmallDateTime), CAST(N'2020-10-19T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1852, 126, 2, CAST(N'2020-10-26T15:00:00' AS SmallDateTime), CAST(N'2020-10-26T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1853, 126, 2, CAST(N'2020-11-02T15:00:00' AS SmallDateTime), CAST(N'2020-11-02T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1854, 126, 2, CAST(N'2020-11-09T15:00:00' AS SmallDateTime), CAST(N'2020-11-09T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1855, 126, 2, CAST(N'2020-11-16T15:00:00' AS SmallDateTime), CAST(N'2020-11-16T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1856, 126, 2, CAST(N'2020-11-23T15:00:00' AS SmallDateTime), CAST(N'2020-11-23T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1857, 126, 2, CAST(N'2020-11-30T15:00:00' AS SmallDateTime), CAST(N'2020-11-30T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1858, 126, 2, CAST(N'2020-12-07T15:00:00' AS SmallDateTime), CAST(N'2020-12-07T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1859, 126, 2, CAST(N'2020-12-14T15:00:00' AS SmallDateTime), CAST(N'2020-12-14T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1860, 86, 1, CAST(N'2020-06-25T13:30:00' AS SmallDateTime), CAST(N'2020-06-25T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1861, 303, 6, CAST(N'2020-06-25T15:00:00' AS SmallDateTime), CAST(N'2020-06-25T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1862, 250, 1, CAST(N'2020-06-25T15:00:00' AS SmallDateTime), CAST(N'2020-06-25T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1863, 93, 6, CAST(N'2020-06-30T16:30:00' AS SmallDateTime), CAST(N'2020-06-30T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1864, 754, 6, CAST(N'2020-06-26T09:00:00' AS SmallDateTime), CAST(N'2020-06-26T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1865, 37, 5, CAST(N'2020-07-01T13:30:00' AS SmallDateTime), CAST(N'2020-07-01T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1866, 722, 6, CAST(N'2020-06-29T13:30:00' AS SmallDateTime), CAST(N'2020-06-29T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1867, 748, 2, CAST(N'2020-06-29T13:30:00' AS SmallDateTime), CAST(N'2020-06-29T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1868, 93, 6, CAST(N'2020-07-16T15:00:00' AS SmallDateTime), CAST(N'2020-07-16T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1869, 748, 2, CAST(N'2020-07-06T13:30:00' AS SmallDateTime), CAST(N'2020-07-06T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1870, 748, 2, CAST(N'2020-07-13T13:30:00' AS SmallDateTime), CAST(N'2020-07-13T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1871, 748, 3, CAST(N'2020-07-20T13:30:00' AS SmallDateTime), CAST(N'2020-07-20T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1872, 748, 3, CAST(N'2020-07-27T13:30:00' AS SmallDateTime), CAST(N'2020-07-27T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1873, 748, 3, CAST(N'2020-08-03T13:30:00' AS SmallDateTime), CAST(N'2020-08-03T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1874, 748, 3, CAST(N'2020-08-10T13:30:00' AS SmallDateTime), CAST(N'2020-08-10T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1875, 748, 3, CAST(N'2020-08-17T13:30:00' AS SmallDateTime), CAST(N'2020-08-17T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1876, 748, 3, CAST(N'2020-08-24T13:30:00' AS SmallDateTime), CAST(N'2020-08-24T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1877, 748, 3, CAST(N'2020-08-31T13:30:00' AS SmallDateTime), CAST(N'2020-08-31T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1878, 748, 3, CAST(N'2020-09-07T13:30:00' AS SmallDateTime), CAST(N'2020-09-07T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1879, 748, 3, CAST(N'2020-09-14T13:30:00' AS SmallDateTime), CAST(N'2020-09-14T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1880, 748, 3, CAST(N'2020-09-21T13:30:00' AS SmallDateTime), CAST(N'2020-09-21T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1881, 748, 3, CAST(N'2020-09-28T13:30:00' AS SmallDateTime), CAST(N'2020-09-28T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1882, 748, 3, CAST(N'2020-10-05T13:30:00' AS SmallDateTime), CAST(N'2020-10-05T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1883, 748, 3, CAST(N'2020-10-12T13:30:00' AS SmallDateTime), CAST(N'2020-10-12T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1884, 748, 3, CAST(N'2020-10-19T13:30:00' AS SmallDateTime), CAST(N'2020-10-19T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1885, 748, 3, CAST(N'2020-10-26T13:30:00' AS SmallDateTime), CAST(N'2020-10-26T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1886, 748, 3, CAST(N'2020-11-02T13:30:00' AS SmallDateTime), CAST(N'2020-11-02T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1887, 748, 3, CAST(N'2020-11-09T13:30:00' AS SmallDateTime), CAST(N'2020-11-09T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1888, 748, 3, CAST(N'2020-11-16T13:30:00' AS SmallDateTime), CAST(N'2020-11-16T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1889, 748, 3, CAST(N'2020-11-23T13:30:00' AS SmallDateTime), CAST(N'2020-11-23T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1890, 748, 3, CAST(N'2020-11-30T13:30:00' AS SmallDateTime), CAST(N'2020-11-30T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1891, 748, 3, CAST(N'2020-12-07T13:30:00' AS SmallDateTime), CAST(N'2020-12-07T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1892, 748, 3, CAST(N'2020-12-14T13:30:00' AS SmallDateTime), CAST(N'2020-12-14T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1893, 748, 3, CAST(N'2020-07-03T14:00:00' AS SmallDateTime), CAST(N'2020-07-03T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1894, 748, 3, CAST(N'2020-07-10T14:00:00' AS SmallDateTime), CAST(N'2020-07-10T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1895, 161, 1, CAST(N'2020-07-02T19:30:00' AS SmallDateTime), CAST(N'2020-07-02T20:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1896, 982, 6, CAST(N'2020-07-13T16:30:00' AS SmallDateTime), CAST(N'2020-07-13T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1897, 712, 2, CAST(N'2020-07-08T19:00:00' AS SmallDateTime), CAST(N'2020-07-08T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1898, 195, 1, CAST(N'2020-07-02T18:00:00' AS SmallDateTime), CAST(N'2020-07-02T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1899, 45, 1, CAST(N'2020-07-03T11:00:00' AS SmallDateTime), CAST(N'2020-07-03T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1900, 8, 1, CAST(N'2020-07-02T18:00:00' AS SmallDateTime), CAST(N'2020-07-02T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1901, 37, 5, CAST(N'2020-07-08T10:30:00' AS SmallDateTime), CAST(N'2020-07-08T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1902, 8, 1, CAST(N'2020-07-09T18:00:00' AS SmallDateTime), CAST(N'2020-07-09T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1903, 8, 1, CAST(N'2020-07-16T18:00:00' AS SmallDateTime), CAST(N'2020-07-16T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1904, 8, 1, CAST(N'2020-07-23T18:00:00' AS SmallDateTime), CAST(N'2020-07-23T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1905, 8, 1, CAST(N'2020-07-30T18:00:00' AS SmallDateTime), CAST(N'2020-07-30T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1906, 8, 1, CAST(N'2020-08-06T18:00:00' AS SmallDateTime), CAST(N'2020-08-06T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1907, 8, 1, CAST(N'2020-08-13T18:00:00' AS SmallDateTime), CAST(N'2020-08-13T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1908, 8, 1, CAST(N'2020-08-20T18:00:00' AS SmallDateTime), CAST(N'2020-08-20T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1909, 8, 1, CAST(N'2020-08-27T18:00:00' AS SmallDateTime), CAST(N'2020-08-27T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1910, 8, 1, CAST(N'2020-09-03T18:00:00' AS SmallDateTime), CAST(N'2020-09-03T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1911, 8, 1, CAST(N'2020-09-10T18:00:00' AS SmallDateTime), CAST(N'2020-09-10T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1912, 8, 1, CAST(N'2020-09-17T18:00:00' AS SmallDateTime), CAST(N'2020-09-17T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1913, 8, 1, CAST(N'2020-09-24T18:00:00' AS SmallDateTime), CAST(N'2020-09-24T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1914, 8, 1, CAST(N'2020-10-01T18:00:00' AS SmallDateTime), CAST(N'2020-10-01T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1915, 8, 1, CAST(N'2020-10-08T18:00:00' AS SmallDateTime), CAST(N'2020-10-08T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1916, 8, 1, CAST(N'2020-10-15T18:00:00' AS SmallDateTime), CAST(N'2020-10-15T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1917, 8, 1, CAST(N'2020-10-22T18:00:00' AS SmallDateTime), CAST(N'2020-10-22T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1918, 8, 1, CAST(N'2020-10-29T18:00:00' AS SmallDateTime), CAST(N'2020-10-29T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1919, 8, 1, CAST(N'2020-11-05T18:00:00' AS SmallDateTime), CAST(N'2020-11-05T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1920, 8, 1, CAST(N'2020-11-12T18:00:00' AS SmallDateTime), CAST(N'2020-11-12T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1921, 8, 1, CAST(N'2020-11-19T18:00:00' AS SmallDateTime), CAST(N'2020-11-19T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1922, 8, 1, CAST(N'2020-11-26T18:00:00' AS SmallDateTime), CAST(N'2020-11-26T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1923, 8, 1, CAST(N'2020-12-03T18:00:00' AS SmallDateTime), CAST(N'2020-12-03T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1924, 8, 1, CAST(N'2020-12-10T18:00:00' AS SmallDateTime), CAST(N'2020-12-10T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1925, 8, 1, CAST(N'2020-12-17T18:00:00' AS SmallDateTime), CAST(N'2020-12-17T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1926, 833, 3, CAST(N'2020-07-03T09:00:00' AS SmallDateTime), CAST(N'2020-07-03T10:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1927, 73, 6, CAST(N'2020-07-09T18:00:00' AS SmallDateTime), CAST(N'2020-07-09T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1928, 57, 3, CAST(N'2020-07-01T18:00:00' AS SmallDateTime), CAST(N'2020-07-01T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1929, 152, 1, CAST(N'2020-07-06T17:30:00' AS SmallDateTime), CAST(N'2020-07-06T19:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1930, 103, 6, CAST(N'2020-07-02T18:00:00' AS SmallDateTime), CAST(N'2020-07-02T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1931, 429, 6, CAST(N'2020-07-06T18:00:00' AS SmallDateTime), CAST(N'2020-07-06T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1932, 926, 6, CAST(N'2020-07-07T16:30:00' AS SmallDateTime), CAST(N'2020-07-07T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1933, 195, 1, CAST(N'2020-07-09T13:30:00' AS SmallDateTime), CAST(N'2020-07-09T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1934, 511, 6, CAST(N'2020-07-03T10:30:00' AS SmallDateTime), CAST(N'2020-07-03T11:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1935, 180, 3, CAST(N'2020-06-30T18:00:00' AS SmallDateTime), CAST(N'2020-06-30T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1936, 161, 1, CAST(N'2020-07-16T19:30:00' AS SmallDateTime), CAST(N'2020-07-16T20:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1937, 73, 2, CAST(N'2020-07-10T16:00:00' AS SmallDateTime), CAST(N'2020-07-10T17:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1938, 871, 3, CAST(N'2020-07-03T10:00:00' AS SmallDateTime), CAST(N'2020-07-03T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1939, 871, 3, CAST(N'2020-07-10T10:00:00' AS SmallDateTime), CAST(N'2020-07-10T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1940, 871, 3, CAST(N'2020-07-17T10:00:00' AS SmallDateTime), CAST(N'2020-07-17T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1941, 871, 3, CAST(N'2020-07-24T10:00:00' AS SmallDateTime), CAST(N'2020-07-24T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1942, 871, 3, CAST(N'2020-07-31T10:00:00' AS SmallDateTime), CAST(N'2020-07-31T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1943, 871, 3, CAST(N'2020-08-07T10:00:00' AS SmallDateTime), CAST(N'2020-08-07T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1944, 871, 3, CAST(N'2020-08-14T10:00:00' AS SmallDateTime), CAST(N'2020-08-14T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1945, 871, 3, CAST(N'2020-08-21T10:00:00' AS SmallDateTime), CAST(N'2020-08-21T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1946, 871, 3, CAST(N'2020-08-28T10:00:00' AS SmallDateTime), CAST(N'2020-08-28T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1947, 871, 3, CAST(N'2020-09-04T10:00:00' AS SmallDateTime), CAST(N'2020-09-04T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1948, 871, 3, CAST(N'2020-09-11T10:00:00' AS SmallDateTime), CAST(N'2020-09-11T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1949, 871, 3, CAST(N'2020-09-18T10:00:00' AS SmallDateTime), CAST(N'2020-09-18T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1950, 871, 3, CAST(N'2020-09-25T10:00:00' AS SmallDateTime), CAST(N'2020-09-25T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1951, 871, 3, CAST(N'2020-10-02T10:00:00' AS SmallDateTime), CAST(N'2020-10-02T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1952, 871, 3, CAST(N'2020-10-09T10:00:00' AS SmallDateTime), CAST(N'2020-10-09T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1953, 871, 3, CAST(N'2020-10-16T10:00:00' AS SmallDateTime), CAST(N'2020-10-16T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1954, 871, 3, CAST(N'2020-10-23T10:00:00' AS SmallDateTime), CAST(N'2020-10-23T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1955, 871, 3, CAST(N'2020-10-30T10:00:00' AS SmallDateTime), CAST(N'2020-10-30T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1956, 871, 3, CAST(N'2020-11-06T10:00:00' AS SmallDateTime), CAST(N'2020-11-06T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1957, 871, 3, CAST(N'2020-11-13T10:00:00' AS SmallDateTime), CAST(N'2020-11-13T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1958, 871, 3, CAST(N'2020-11-20T10:00:00' AS SmallDateTime), CAST(N'2020-11-20T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1959, 871, 3, CAST(N'2020-11-27T10:00:00' AS SmallDateTime), CAST(N'2020-11-27T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1960, 871, 3, CAST(N'2020-12-04T10:00:00' AS SmallDateTime), CAST(N'2020-12-04T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1961, 871, 3, CAST(N'2020-12-11T10:00:00' AS SmallDateTime), CAST(N'2020-12-11T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1962, 871, 3, CAST(N'2020-12-18T10:00:00' AS SmallDateTime), CAST(N'2020-12-18T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1963, 871, 3, CAST(N'2020-12-25T10:00:00' AS SmallDateTime), CAST(N'2020-12-25T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1964, 871, 3, CAST(N'2021-01-01T10:00:00' AS SmallDateTime), CAST(N'2021-01-01T11:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1965, 966, 6, CAST(N'2020-07-07T13:30:00' AS SmallDateTime), CAST(N'2020-07-07T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1966, 152, 1, CAST(N'2020-07-14T16:30:00' AS SmallDateTime), CAST(N'2020-07-14T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1967, 152, 1, CAST(N'2020-07-20T16:30:00' AS SmallDateTime), CAST(N'2020-07-20T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1968, 152, 1, CAST(N'2020-07-27T16:30:00' AS SmallDateTime), CAST(N'2020-07-27T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1969, 152, 1, CAST(N'2020-08-03T16:30:00' AS SmallDateTime), CAST(N'2020-08-03T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1970, 152, 1, CAST(N'2020-08-10T16:30:00' AS SmallDateTime), CAST(N'2020-08-10T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1971, 152, 1, CAST(N'2020-08-17T16:30:00' AS SmallDateTime), CAST(N'2020-08-17T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1972, 152, 1, CAST(N'2020-08-24T16:30:00' AS SmallDateTime), CAST(N'2020-08-24T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1973, 152, 1, CAST(N'2020-08-31T16:30:00' AS SmallDateTime), CAST(N'2020-08-31T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1974, 152, 1, CAST(N'2020-09-07T16:30:00' AS SmallDateTime), CAST(N'2020-09-07T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1975, 152, 1, CAST(N'2020-09-14T16:30:00' AS SmallDateTime), CAST(N'2020-09-14T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1976, 152, 1, CAST(N'2020-09-21T16:30:00' AS SmallDateTime), CAST(N'2020-09-21T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1977, 152, 1, CAST(N'2020-09-28T16:30:00' AS SmallDateTime), CAST(N'2020-09-28T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1978, 152, 1, CAST(N'2020-10-05T16:30:00' AS SmallDateTime), CAST(N'2020-10-05T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1979, 152, 1, CAST(N'2020-10-12T16:30:00' AS SmallDateTime), CAST(N'2020-10-12T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1980, 152, 1, CAST(N'2020-10-19T16:30:00' AS SmallDateTime), CAST(N'2020-10-19T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1981, 152, 1, CAST(N'2020-10-26T16:30:00' AS SmallDateTime), CAST(N'2020-10-26T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1982, 152, 1, CAST(N'2020-11-02T16:30:00' AS SmallDateTime), CAST(N'2020-11-02T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1983, 152, 1, CAST(N'2020-11-09T16:30:00' AS SmallDateTime), CAST(N'2020-11-09T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1984, 152, 1, CAST(N'2020-11-16T16:30:00' AS SmallDateTime), CAST(N'2020-11-16T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1985, 152, 1, CAST(N'2020-11-23T16:30:00' AS SmallDateTime), CAST(N'2020-11-23T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1986, 152, 1, CAST(N'2020-11-30T16:30:00' AS SmallDateTime), CAST(N'2020-11-30T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1987, 152, 1, CAST(N'2020-12-07T16:30:00' AS SmallDateTime), CAST(N'2020-12-07T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1988, 152, 1, CAST(N'2020-12-14T16:30:00' AS SmallDateTime), CAST(N'2020-12-14T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1989, 965, 2, CAST(N'2020-07-08T14:15:00' AS SmallDateTime), CAST(N'2020-07-08T15:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1990, 966, 6, CAST(N'2020-07-21T13:30:00' AS SmallDateTime), CAST(N'2020-07-21T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1991, 952, 6, CAST(N'2020-07-20T15:00:00' AS SmallDateTime), CAST(N'2020-07-20T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1992, 511, 6, CAST(N'2020-07-16T18:00:00' AS SmallDateTime), CAST(N'2020-07-16T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1993, 135, 5, CAST(N'2020-07-15T10:30:00' AS SmallDateTime), CAST(N'2020-07-15T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1994, 126, 2, CAST(N'2020-07-09T16:00:00' AS SmallDateTime), CAST(N'2020-07-09T16:15:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1995, 195, 1, CAST(N'2020-07-23T13:30:00' AS SmallDateTime), CAST(N'2020-07-23T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1996, 195, 1, CAST(N'2020-07-17T10:15:00' AS SmallDateTime), CAST(N'2020-07-17T11:15:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1997, 126, 2, CAST(N'2020-07-16T17:00:00' AS SmallDateTime), CAST(N'2020-07-16T17:15:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1998, 152, 1, CAST(N'2020-07-09T19:30:00' AS SmallDateTime), CAST(N'2020-07-09T20:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (1999, 818, 6, CAST(N'2020-07-14T16:30:00' AS SmallDateTime), CAST(N'2020-07-14T17:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (2000, 979, 6, CAST(N'2020-07-13T13:30:00' AS SmallDateTime), CAST(N'2020-07-13T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (2001, 722, 11, CAST(N'2020-07-20T16:00:00' AS SmallDateTime), CAST(N'2020-07-20T16:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (2002, 697, 6, CAST(N'2020-07-14T15:00:00' AS SmallDateTime), CAST(N'2020-07-14T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (2003, 161, 1, CAST(N'2020-07-28T19:30:00' AS SmallDateTime), CAST(N'2020-07-28T20:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (2004, 161, 1, CAST(N'2020-08-11T19:30:00' AS SmallDateTime), CAST(N'2020-08-11T20:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (2005, 161, 1, CAST(N'2020-08-25T19:30:00' AS SmallDateTime), CAST(N'2020-08-25T20:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (2006, 161, 1, CAST(N'2020-09-08T19:30:00' AS SmallDateTime), CAST(N'2020-09-08T20:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (2007, 161, 1, CAST(N'2020-09-22T19:30:00' AS SmallDateTime), CAST(N'2020-09-22T20:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (2008, 161, 1, CAST(N'2020-10-06T19:30:00' AS SmallDateTime), CAST(N'2020-10-06T20:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (2009, 161, 1, CAST(N'2020-10-20T19:30:00' AS SmallDateTime), CAST(N'2020-10-20T20:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (2010, 161, 1, CAST(N'2020-11-03T19:30:00' AS SmallDateTime), CAST(N'2020-11-03T20:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (2011, 161, 1, CAST(N'2020-11-17T19:30:00' AS SmallDateTime), CAST(N'2020-11-17T20:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (2012, 161, 1, CAST(N'2020-12-01T19:30:00' AS SmallDateTime), CAST(N'2020-12-01T20:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (2013, 161, 1, CAST(N'2020-12-15T19:30:00' AS SmallDateTime), CAST(N'2020-12-15T20:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (2014, 473, 6, CAST(N'2020-07-14T13:30:00' AS SmallDateTime), CAST(N'2020-07-14T14:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (2015, 152, 1, CAST(N'2020-07-15T19:15:00' AS SmallDateTime), CAST(N'2020-07-15T20:15:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (2016, 473, 6, CAST(N'2020-07-28T15:00:00' AS SmallDateTime), CAST(N'2020-07-28T16:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (2017, 153, 6, CAST(N'2020-07-14T19:30:00' AS SmallDateTime), CAST(N'2020-07-14T20:30:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (2018, 1102, 2, CAST(N'2020-07-15T13:00:00' AS SmallDateTime), CAST(N'2020-07-15T13:45:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (2019, 249, 2, CAST(N'2020-07-16T11:00:00' AS SmallDateTime), CAST(N'2020-07-16T12:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (2020, 140, 5, CAST(N'2021-01-05T02:00:00' AS SmallDateTime), CAST(N'2021-01-05T03:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (2021, 45, 2, CAST(N'2020-09-02T18:00:00' AS SmallDateTime), CAST(N'2020-09-02T19:00:00' AS SmallDateTime))
GO
INSERT agenda (cd_agenda, cd_paciente, cd_profissional, dt_inicio, dt_fim) VALUES (2022, 38, 1, CAST(N'2020-09-02T18:00:00' AS SmallDateTime), CAST(N'2020-09-02T19:00:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT agenda OFF
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (1, N'ALUNO 1', 5, CAST(N'2001-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (2, N'ALUNO 2', 1, CAST(N'1988-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (3, N'ALUNO 3', 4, CAST(N'1993-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (4, N'ALUNO 4', 8, CAST(N'2005-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (5, N'ALUNO 5', 1, CAST(N'1988-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (6, N'ALUNO 6', 5, CAST(N'1993-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (7, N'ALUNO 7', 4, CAST(N'1993-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (8, N'ALUNO 8', 8, CAST(N'2004-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (9, N'ALUNO 9', 4, CAST(N'1991-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (10, N'ALUNO 10', 5, CAST(N'2001-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (11, N'ALUNO 11', 4, CAST(N'1996-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (12, N'ALUNO 12', 5, CAST(N'1991-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (13, N'ALUNO 13', 5, CAST(N'2002-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (14, N'ALUNO 14', 8, CAST(N'1997-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (15, N'ALUNO 15', 4, CAST(N'1998-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (16, N'ALUNO 16', 2, CAST(N'1992-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (17, N'ALUNO 17', 4, CAST(N'2005-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (18, N'ALUNO 18', 7, CAST(N'2002-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (19, N'ALUNO 19', 3, CAST(N'1987-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (20, N'ALUNO 20', 4, CAST(N'1991-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (21, N'ALUNO 21', 3, CAST(N'1999-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (22, N'ALUNO 22', 7, CAST(N'2001-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (23, N'ALUNO 23', 4, CAST(N'2002-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (24, N'ALUNO 24', 3, CAST(N'1986-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (25, N'ALUNO 25', 8, CAST(N'1989-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (26, N'ALUNO 26', 2, CAST(N'2003-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (27, N'ALUNO 27', 3, CAST(N'1996-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (28, N'ALUNO 28', 5, CAST(N'2005-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (29, N'ALUNO 29', 1, CAST(N'2006-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (30, N'ALUNO 30', 5, CAST(N'1996-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (31, N'ALUNO 31', 5, CAST(N'2005-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (32, N'ALUNO 32', 1, CAST(N'2003-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (33, N'ALUNO 33', 3, CAST(N'2005-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (34, N'ALUNO 34', 2, CAST(N'2004-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (35, N'ALUNO 35', 3, CAST(N'1994-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (36, N'ALUNO 36', 4, CAST(N'1998-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (37, N'ALUNO 37', 5, CAST(N'1995-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (38, N'ALUNO 38', 3, CAST(N'1999-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (39, N'ALUNO 39', 8, CAST(N'1998-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (40, N'ALUNO 40', 8, CAST(N'1986-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (41, N'ALUNO 41', 10, CAST(N'2001-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (42, N'ALUNO 42', 2, CAST(N'2004-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (43, N'ALUNO 43', 4, CAST(N'1992-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (44, N'ALUNO 44', 10, CAST(N'1992-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (45, N'ALUNO 45', 5, CAST(N'1999-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (46, N'ALUNO 46', 5, CAST(N'1993-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (47, N'ALUNO 47', 10, CAST(N'1995-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (48, N'ALUNO 48', 5, CAST(N'1995-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (49, N'ALUNO 49', 10, CAST(N'1989-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (50, N'ALUNO 50', 4, CAST(N'1998-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (51, N'ALUNO 51', 10, CAST(N'1990-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (52, N'ALUNO 52', 3, CAST(N'1989-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (53, N'ALUNO 53', 10, CAST(N'1988-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (54, N'ALUNO 54', 10, CAST(N'2003-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (55, N'ALUNO 55', 7, CAST(N'2002-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (56, N'ALUNO 56', 5, CAST(N'1991-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (57, N'ALUNO 57', 8, CAST(N'1993-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (58, N'ALUNO 58', 8, CAST(N'2005-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (59, N'ALUNO 59', 4, CAST(N'1987-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (60, N'ALUNO 60', 3, CAST(N'1998-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (61, N'ALUNO 61', 2, CAST(N'1989-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (62, N'ALUNO 62', 1, CAST(N'1994-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (63, N'ALUNO 63', 10, CAST(N'1992-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (64, N'ALUNO 64', 4, CAST(N'1997-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (65, N'ALUNO 65', 10, CAST(N'1989-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (66, N'ALUNO 66', 4, CAST(N'1994-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (67, N'ALUNO 67', 1, CAST(N'1996-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (68, N'ALUNO 68', 10, CAST(N'2003-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (69, N'ALUNO 69', 4, CAST(N'1999-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (70, N'ALUNO 70', 4, CAST(N'2003-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (71, N'ALUNO 71', 7, CAST(N'1998-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (72, N'ALUNO 72', 4, CAST(N'1992-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (73, N'ALUNO 73', 2, CAST(N'1999-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (74, N'ALUNO 74', 1, CAST(N'1989-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (75, N'ALUNO 75', 4, CAST(N'1988-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (76, N'ALUNO 76', 5, CAST(N'1990-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (77, N'ALUNO 77', 5, CAST(N'1998-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (78, N'ALUNO 78', 3, CAST(N'1998-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (79, N'ALUNO 79', 1, CAST(N'1994-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (80, N'ALUNO 80', 5, CAST(N'1994-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (81, N'ALUNO 81', 5, CAST(N'2002-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (82, N'ALUNO 82', 3, CAST(N'2001-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (83, N'ALUNO 83', 8, CAST(N'1988-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (84, N'ALUNO 84', 3, CAST(N'1988-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (85, N'ALUNO 85', 5, CAST(N'1989-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (86, N'ALUNO 86', 8, CAST(N'1988-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (87, N'ALUNO 87', 2, CAST(N'1997-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (88, N'ALUNO 88', 5, CAST(N'1994-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (89, N'ALUNO 89', 2, CAST(N'1996-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (90, N'ALUNO 90', 5, CAST(N'2001-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (91, N'ALUNO 91', 4, CAST(N'1993-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (92, N'ALUNO 92', 4, CAST(N'1989-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (93, N'ALUNO 93', 1, CAST(N'1986-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (94, N'ALUNO 94', 5, CAST(N'1991-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (95, N'ALUNO 95', 3, CAST(N'1994-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (96, N'ALUNO 96', 2, CAST(N'1997-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (97, N'ALUNO 97', 4, CAST(N'1989-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (98, N'ALUNO 98', 8, CAST(N'2004-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (99, N'ALUNO 99', 8, CAST(N'2002-04-16' AS Date))
GO
INSERT aluno (cd_aluno, nm_aluno, cd_curso, dt_nascimento) VALUES (100, N'ALUNO 100', 1, CAST(N'1996-04-16' AS Date))
GO
INSERT apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200001, 1, CAST(N'2021-02-24' AS Date), CAST(N'2022-02-24' AS Date), CAST(2565.25 AS Numeric(10, 2)), CAST(100.25 AS Numeric(10, 2)), N'MZT1826')
GO
INSERT apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200010, 1, CAST(N'2021-08-24' AS Date), CAST(N'2022-08-24' AS Date), CAST(9425.25 AS Numeric(10, 2)), CAST(68.64 AS Numeric(10, 2)), N'NAP5760')
GO
INSERT apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200012, 1, CAST(N'2022-05-24' AS Date), CAST(N'2023-05-24' AS Date), CAST(19970.84 AS Numeric(10, 2)), CAST(157.80 AS Numeric(10, 2)), N'CCR8096')
GO
INSERT apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200007, 2, CAST(N'2022-11-24' AS Date), CAST(N'2023-11-24' AS Date), CAST(19509.51 AS Numeric(10, 2)), CAST(61.00 AS Numeric(10, 2)), N'NFT2212')
GO
INSERT apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200011, 2, CAST(N'2022-12-24' AS Date), CAST(N'2023-12-24' AS Date), CAST(7865.55 AS Numeric(10, 2)), CAST(89.16 AS Numeric(10, 2)), N'ALD3834')
GO
INSERT apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200003, 3, CAST(N'2023-02-24' AS Date), CAST(N'2024-02-24' AS Date), CAST(19456.46 AS Numeric(10, 2)), CAST(146.99 AS Numeric(10, 2)), N'JIE0952')
GO
INSERT apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200004, 3, CAST(N'2021-10-24' AS Date), CAST(N'2022-10-24' AS Date), CAST(4615.60 AS Numeric(10, 2)), CAST(47.77 AS Numeric(10, 2)), N'LVX7086')
GO
INSERT apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200005, 3, CAST(N'2022-10-24' AS Date), CAST(N'2023-10-24' AS Date), CAST(19130.12 AS Numeric(10, 2)), CAST(181.57 AS Numeric(10, 2)), N'LWJ9156')
GO
INSERT apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200016, 3, CAST(N'2022-06-24' AS Date), CAST(N'2023-06-24' AS Date), CAST(15760.31 AS Numeric(10, 2)), CAST(132.84 AS Numeric(10, 2)), N'EEE1056')
GO
INSERT apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200014, 4, CAST(N'2021-12-24' AS Date), CAST(N'2022-12-24' AS Date), CAST(15040.52 AS Numeric(10, 2)), CAST(161.51 AS Numeric(10, 2)), N'GQY6753')
GO
INSERT apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200015, 4, CAST(N'2023-02-24' AS Date), CAST(N'2024-02-24' AS Date), CAST(16261.87 AS Numeric(10, 2)), CAST(180.20 AS Numeric(10, 2)), N'DLA3438')
GO
INSERT apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200009, 6, CAST(N'2023-03-24' AS Date), CAST(N'2024-03-24' AS Date), CAST(17561.01 AS Numeric(10, 2)), CAST(169.48 AS Numeric(10, 2)), N'FFR1234')
GO
INSERT apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200002, 7, CAST(N'2022-02-24' AS Date), CAST(N'2023-02-24' AS Date), CAST(16081.90 AS Numeric(10, 2)), CAST(28.79 AS Numeric(10, 2)), N'NEM5116')
GO
INSERT apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200006, 7, CAST(N'2022-02-24' AS Date), CAST(N'2023-02-24' AS Date), CAST(12595.89 AS Numeric(10, 2)), CAST(20.45 AS Numeric(10, 2)), N'IAC8974')
GO
INSERT apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200008, 7, CAST(N'2022-10-24' AS Date), CAST(N'2023-10-24' AS Date), CAST(6815.28 AS Numeric(10, 2)), CAST(145.16 AS Numeric(10, 2)), N'IAC8974')
GO
INSERT apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200013, 7, CAST(N'2023-03-24' AS Date), CAST(N'2024-03-24' AS Date), CAST(2737.30 AS Numeric(10, 2)), CAST(25.81 AS Numeric(10, 2)), N'IAC8974')
GO
INSERT carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'ALD3834', N'CLIO', N'34574215969', N'RENAULT', 2011, N'BRANCO')
GO
INSERT carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'CCR8096', N'CRETA', N'88547875547', N'HYUNDAI', 2020, N'BRANCO')
GO
INSERT carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'DLA3438', N'PUNTO', N'98823483434', N'FIAT', 2013, N'PRETO')
GO
INSERT carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'EEE1056', N'ECO SPORT', N'56753453455', N'FORD', 2020, N'AZUL')
GO
INSERT carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'FFR1234', N'PALIO', N'32383478747', N'FIAT', 2009, N'AMARELO')
GO
INSERT carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'GQY6753', N'S10', N'72004160549', N'GM', 2015, N'PRETO')
GO
INSERT carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'IAC8974', N'TIGUAN', N'77130757746', N'VOLKSWAGEN', 2022, N'AZUL')
GO
INSERT carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'JIE0952', N'PASSAT', N'87493270405', N'VOLKSWAGEN', 2016, N'CINZA')
GO
INSERT carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'JNU7898', N'2020', N'87628347687', N'FORD', 2020, N'VERDE')
GO
INSERT carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'LVX7086', N'SANDERO', N'00025131958', N'RENAULT', 1999, N'VERMELHO')
GO
INSERT carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'LWJ9156', N'ONIX', N'40991078801', N'GM', 2015, N'AZUL')
GO
INSERT carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'MZT1826', N'GOL', N'41150439528', N'VOLKSWAGEN', 1998, N'AMARELO')
GO
INSERT carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'NAP5760', N'COMPASS', N'40364369549', N'JEEP', 2017, N'PRETO')
GO
INSERT carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'NEM5116', N'2008', N'69469771523', N'PEUGEOT', 2018, N'PRETO')
GO
INSERT carro (placa, modelo, chassi, marca, ano, cor) VALUES (N'NFT2212', N'KWID', N'12344343433', N'RENAULT', 2023, N'BRANCO')
GO
INSERT cliente (cod_cliente, nome, cpf, sexo, endereco, telefone_fixo, telefone_celular) VALUES (1, N'MARISA MELO OLIVEIRA', N'11111111111', N'F', N'RUA JOSÉ WOSCH SOBRINHO, 1938', N'4150964117', N'4150964117')
GO
INSERT cliente (cod_cliente, nome, cpf, sexo, endereco, telefone_fixo, telefone_celular) VALUES (2, N'MURILO CARVALHO CARDOSO', N'22222222222', N'M', N'RUA GEORGE BERNANOS, 122800', N'2139445385', NULL)
GO
INSERT cliente (cod_cliente, nome, cpf, sexo, endereco, telefone_fixo, telefone_celular) VALUES (3, N'VINICIUS ROCHA RODRIGUES', N'33333333333', N'M', NULL, NULL, NULL)
GO
INSERT cliente (cod_cliente, nome, cpf, sexo, endereco, telefone_fixo, telefone_celular) VALUES (4, N'CAROLINA ROCHA GOMES', N'44444444444', N'F', NULL, NULL, NULL)
GO
INSERT cliente (cod_cliente, nome, cpf, sexo, endereco, telefone_fixo, telefone_celular) VALUES (5, N'ALINE SANTOS CASTRO', N'55555555555', N'F', N'RUA ARMANDO PACAGNELLA, 1259', N'1972872893', N'1972872893')
GO
INSERT cliente (cod_cliente, nome, cpf, sexo, endereco, telefone_fixo, telefone_celular) VALUES (6, N'LEILA CORREIA CAVALCANTI', N'66666666666', N'F', N'RUA FRANCISCO D''ARAGE, 930', NULL, NULL)
GO
INSERT cliente (cod_cliente, nome, cpf, sexo, endereco, telefone_fixo, telefone_celular) VALUES (7, N'SOPHIA CORREIA SANTOS', N'77777777777', N'F', N'RUA JOÃO FORTES, 372', N'4982696660', N'4982696660')
GO
INSERT cliente (cod_cliente, nome, cpf, sexo, endereco, telefone_fixo, telefone_celular) VALUES (8, N'JOÃO CORREIA COSTA', N'88888888888', N'M', N'RUA PARAGUÁ, 526', N'5177742809', N'5177742809')
GO
INSERT cliente (cod_cliente, nome, cpf, sexo, endereco, telefone_fixo, telefone_celular) VALUES (9, N'RAFAEL DIAS SOUZA', N'99999999999', N'M', N'RUA MARIA MARCHI VISSALI, 74', N'1674593139', N'1674593139')
GO
INSERT curso (cd_curso, nm_curso, nm_faculdade) VALUES (1, N'Engenharia Civil', N'Universidade ABC')
GO
INSERT curso (cd_curso, nm_curso, nm_faculdade) VALUES (2, N'Medicina', N'Universidade XYZ')
GO
INSERT curso (cd_curso, nm_curso, nm_faculdade) VALUES (3, N'Administração de Empresas', N'Instituto de Administração')
GO
INSERT curso (cd_curso, nm_curso, nm_faculdade) VALUES (4, N'Engenharia da Computação', N'Faculdade de Tecnologia e Informática')
GO
INSERT curso (cd_curso, nm_curso, nm_faculdade) VALUES (5, N'Engenharia de Software', N'Faculdade de Tecnologia e Informática')
GO
INSERT curso (cd_curso, nm_curso, nm_faculdade) VALUES (6, N'Psicologia', N'Instituto de Psicologia e Ciências Humanas')
GO
INSERT curso (cd_curso, nm_curso, nm_faculdade) VALUES (7, N'Economia', N'Faculdade de Economia Global')
GO
INSERT curso (cd_curso, nm_curso, nm_faculdade) VALUES (8, N'Arquitetura', N'Escola de Arquitetura e Design')
GO
INSERT curso (cd_curso, nm_curso, nm_faculdade) VALUES (9, N'Biologia', N'Instituto de Ciências Biológicas')
GO
INSERT curso (cd_curso, nm_curso, nm_faculdade) VALUES (10, N'Engenharia Elétrica', N'Faculdade de Engenharia Elétrica Alfa')
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1, N'ADA', CAST(N'2003-04-20' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (2, N'ADALBERTO', CAST(N'2002-04-19' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (3, N'ADEIR', CAST(N'1999-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (4, N'ADELINA', CAST(N'2001-04-19' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (5, N'ADELIR', CAST(N'1999-05-11' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (6, N'ADELMA', CAST(N'1999-04-26' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (7, N'ADELOR', CAST(N'1993-05-04' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (8, N'ADEMAR', CAST(N'1996-05-03' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (9, N'ADEMIR', CAST(N'2004-04-17' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (10, N'ADERVANI', CAST(N'2005-05-10' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (11, N'ADÍLIA', CAST(N'2005-05-08' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (12, N'ADILSON', CAST(N'1989-04-22' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (13, N'ADIOVANO', CAST(N'1995-05-04' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (14, N'ADRIANA', CAST(N'1991-04-17' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (15, N'ADRIANE', CAST(N'1991-04-29' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (16, N'ADRIANO', CAST(N'1991-05-03' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (17, N'ADRINARA', CAST(N'1992-04-26' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (18, N'AGENOR', CAST(N'1988-04-27' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (19, N'AGNALDO', CAST(N'1990-04-29' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (20, N'AIRSON', CAST(N'1993-05-13' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (21, N'AKILSON', CAST(N'1987-05-02' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (22, N'ALAN', CAST(N'2003-05-05' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (23, N'ALBA', CAST(N'1988-04-23' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (24, N'ALBERTINA', CAST(N'2005-04-21' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (25, N'ALBERTO', CAST(N'1996-05-13' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (26, N'ALCENI', CAST(N'1998-04-23' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (27, N'ALCIDEZ', CAST(N'1996-05-01' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (28, N'ALCIONIR', CAST(N'1997-05-11' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (29, N'ALDA', CAST(N'1988-05-02' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (30, N'ALDINAR', CAST(N'1989-05-01' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (31, N'ALDO', CAST(N'1995-04-22' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (32, N'ALECKSSANDRA', CAST(N'1997-05-06' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (33, N'ALEIVID', CAST(N'1988-04-28' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (34, N'ALEJANDRA', CAST(N'1987-05-10' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (35, N'ALESSANDRA', CAST(N'2005-05-12' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (36, N'ALESSANDRO', CAST(N'1994-05-10' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (37, N'ALEX', CAST(N'1992-05-04' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (38, N'ALEXANDER', CAST(N'2005-04-22' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (39, N'ALEXANDRE', CAST(N'2006-05-02' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (40, N'ALEXANDRO', CAST(N'1993-05-03' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (41, N'ALEXIA', CAST(N'2002-05-03' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (42, N'ALEXSANDRO', CAST(N'2002-04-29' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (43, N'ALICE', CAST(N'2003-04-27' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (44, N'ALINA', CAST(N'2004-04-19' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (45, N'ALINE', CAST(N'2001-04-20' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (46, N'ALISANGELA', CAST(N'2005-05-09' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (47, N'ALISSON', CAST(N'2002-05-01' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (48, N'ALIZANGELA', CAST(N'2005-05-03' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (49, N'ALMIR', CAST(N'1998-04-23' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (50, N'ALMIRO', CAST(N'1994-04-22' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (51, N'ALOISIO', CAST(N'2002-04-23' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (52, N'ALTEMIR', CAST(N'1998-05-11' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (53, N'ALVARO', CAST(N'2004-05-01' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (54, N'ÁLVARO', CAST(N'1998-04-22' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (55, N'ALVINA', CAST(N'1990-04-21' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (56, N'ALVIR', CAST(N'1992-05-06' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (57, N'ALZIRA', CAST(N'1994-04-23' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (58, N'AMABILI', CAST(N'1986-04-25' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (59, N'AMALIA', CAST(N'1990-04-30' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (60, N'AMÁLIA', CAST(N'1992-05-02' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (61, N'AMANDA', CAST(N'1988-05-11' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (62, N'AMARILDO', CAST(N'1992-05-09' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (63, N'AMBROZIO', CAST(N'2004-04-25' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (64, N'ANA', CAST(N'1995-04-27' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (65, N'ANABEL', CAST(N'1995-04-24' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (66, N'ANABELLE', CAST(N'1996-05-02' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (67, N'ANADIR', CAST(N'1991-04-21' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (68, N'ANALICE', CAST(N'1987-04-24' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (69, N'ANDERSON', CAST(N'1991-05-05' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (70, N'ANDIELE', CAST(N'2003-04-27' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (71, N'ANDRE', CAST(N'1986-05-13' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (72, N'ANDRÉ', CAST(N'1993-04-21' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (73, N'ANDREA', CAST(N'1992-05-03' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (74, N'ANDRÉA', CAST(N'1993-05-04' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (75, N'ANDREI', CAST(N'1995-05-08' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (76, N'ANDREIA', CAST(N'2001-05-11' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (77, N'ANDRÉIA', CAST(N'1998-05-12' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (78, N'ANDRESSA', CAST(N'1998-04-27' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (79, N'ANDREZA', CAST(N'1997-04-18' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (80, N'ANDRIELE', CAST(N'1997-04-24' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (81, N'ANELISE', CAST(N'1994-05-06' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (82, N'ANGELA', CAST(N'1995-04-30' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (83, N'ÂNGELA', CAST(N'1998-05-08' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (84, N'ANGELICA', CAST(N'1989-04-21' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (85, N'ANGELO', CAST(N'1989-05-08' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (86, N'ÂNGELO', CAST(N'1998-04-21' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (87, N'ANIBAL', CAST(N'1991-05-11' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (88, N'ANIE', CAST(N'1987-04-21' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (89, N'ANIELA', CAST(N'2001-05-05' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (90, N'ANITA', CAST(N'1988-04-26' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (91, N'ANNE', CAST(N'1996-05-10' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (92, N'ANNIE', CAST(N'1998-04-29' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (93, N'ANOELI', CAST(N'1997-05-06' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (94, N'ANTÔNIA', CAST(N'1989-05-07' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (95, N'ANTONINHO', CAST(N'1994-04-28' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (96, N'ANTONIO', CAST(N'2003-04-20' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (97, N'ANTÔNIO', CAST(N'1988-04-18' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (98, N'APARECIDA', CAST(N'1998-04-17' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (99, N'ARACELI', CAST(N'1997-04-21' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (100, N'ARCILÉSIO', CAST(N'1994-05-06' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (101, N'ARIADLIS', CAST(N'1994-05-04' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (102, N'ARIANA', CAST(N'2005-05-09' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (103, N'ARIANE', CAST(N'1991-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (104, N'ARICÉLIA', CAST(N'1986-05-14' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (105, N'ARINA', CAST(N'2004-04-21' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (106, N'ARISTIDES', CAST(N'1986-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (107, N'ARLEIDE', CAST(N'1991-04-28' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (108, N'ARLENE', CAST(N'1991-04-28' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (109, N'ARLETE', CAST(N'2002-04-21' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (110, N'ARLEY', CAST(N'1989-05-14' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (111, N'ARLON', CAST(N'1988-05-11' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (112, N'ARTHUR', CAST(N'2001-04-30' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (113, N'ARTUR', CAST(N'2005-05-09' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (114, N'ASTRID', CAST(N'1986-04-28' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (115, N'ATAIZE', CAST(N'1997-05-06' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (116, N'ATÔNIO', CAST(N'2005-05-11' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (117, N'AUDINAR', CAST(N'1993-04-27' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (118, N'AUGUSTO', CAST(N'1988-04-21' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (119, N'AURÉLIO', CAST(N'1991-04-23' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (120, N'AVELINO', CAST(N'2001-04-18' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (121, N'BARBARA', CAST(N'1987-05-11' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (122, N'BEATRIAZ', CAST(N'2003-05-07' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (123, N'BEATRICE', CAST(N'1998-05-13' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (124, N'BEATRIZ', CAST(N'1988-05-03' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (125, N'BELLA', CAST(N'1998-04-29' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (126, N'BENÍCIO', CAST(N'1999-04-26' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (127, N'BERNADETH', CAST(N'1989-04-17' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (128, N'BERNARDO', CAST(N'1988-04-25' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (129, N'BETHANIA', CAST(N'1994-05-12' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (130, N'BETINA', CAST(N'2001-05-01' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (131, N'BIANCA', CAST(N'1995-04-21' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (132, N'BLIMAIR', CAST(N'1997-05-14' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (133, N'BRENA', CAST(N'2003-05-11' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (134, N'BRENDA', CAST(N'1993-04-17' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (135, N'BRUNA', CAST(N'2001-05-10' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (136, N'BRUNNO', CAST(N'2005-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (137, N'BRUNO', CAST(N'1994-04-23' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (138, N'CACILDA', CAST(N'2002-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (139, N'CAIO', CAST(N'1998-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (140, N'CAMILA', CAST(N'2002-05-13' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (141, N'CAMILLE', CAST(N'1998-04-23' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (142, N'CANDICE', CAST(N'1988-05-08' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (143, N'CARINA', CAST(N'2001-04-20' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (144, N'CARINE', CAST(N'2000-06-15' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (145, N'CARLA', CAST(N'2004-04-18' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (146, N'CARLOS', CAST(N'1986-04-19' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (147, N'CARMEM', CAST(N'1991-04-23' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (148, N'CAROLINA', CAST(N'1990-04-25' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (149, N'CAROLINE', CAST(N'1997-04-17' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (150, N'CAROLYNE', CAST(N'1988-04-24' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (151, N'CARULINA', CAST(N'2001-05-08' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (152, N'CASSILDA', CAST(N'2005-05-04' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (153, N'CATARINA', CAST(N'2005-04-22' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (154, N'CATHERINE', CAST(N'1992-05-05' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (155, N'CATIA', CAST(N'1995-05-07' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (156, N'CÁTIA', CAST(N'1989-05-07' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (157, N'CATIANI', CAST(N'1992-05-09' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (158, N'CATRINE', CAST(N'2003-04-19' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (159, N'CAZUZA', CAST(N'2006-05-02' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (160, N'CECÍLIA', CAST(N'1990-05-05' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (161, N'CELDA', CAST(N'1997-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (162, N'CELESTINA', CAST(N'1997-04-25' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (163, N'CELIA', CAST(N'1991-05-13' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (164, N'CELIO', CAST(N'1998-05-06' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (165, N'CESAR', CAST(N'2001-05-03' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (166, N'CEZAR', CAST(N'1997-05-09' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (167, N'CHAILENE', CAST(N'1986-04-28' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (168, N'CHANDREUS', CAST(N'2002-05-12' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (169, N'CHARLANE', CAST(N'1999-05-03' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (170, N'CHARLES', CAST(N'1988-05-06' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (171, N'CHARMELINE', CAST(N'1990-04-22' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (172, N'CIBELE', CAST(N'1988-05-11' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (173, N'CILANDRA', CAST(N'1998-04-25' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (174, N'CILÉSIO', CAST(N'2001-05-04' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (175, N'CINTIA', CAST(N'2001-05-05' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (176, N'CÍNTIA', CAST(N'1998-05-01' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (177, N'CIRILO', CAST(N'1988-04-21' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (178, N'CIRURGIAS', CAST(N'1989-05-14' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (179, N'CLAITON', CAST(N'2001-04-27' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (180, N'CLARISSA', CAST(N'1992-04-26' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (181, N'CLARISSE', CAST(N'1993-05-13' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (182, N'CLAUDENIR', CAST(N'1991-04-17' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (183, N'CLAUDETE', CAST(N'1996-04-17' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (184, N'CLAUDIA', CAST(N'1988-04-17' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (185, N'CLAÚDIA', CAST(N'1987-05-10' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (186, N'CLAUDIO', CAST(N'1991-05-02' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (187, N'CLAÚDIO', CAST(N'1992-04-30' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (188, N'CLAUSA', CAST(N'1994-04-23' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (189, N'CLEBER', CAST(N'1998-04-23' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (190, N'CLEDIS', CAST(N'2002-04-24' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (191, N'CLEIDE', CAST(N'1992-05-13' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (192, N'CLEIVA', CAST(N'1987-05-12' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (193, N'CLEONICE', CAST(N'1992-05-01' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (194, N'CLESIO', CAST(N'1991-04-18' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (195, N'CLEUSA', CAST(N'1993-05-04' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (196, N'CLEUZA', CAST(N'1995-05-11' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (197, N'CLEVIS', CAST(N'2006-05-03' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (198, N'CLÉVIS', CAST(N'1988-04-20' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (199, N'CLEYTON', CAST(N'1998-04-30' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (200, N'GEORGE', CAST(N'2001-05-10' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (201, N'CLODENIR', CAST(N'1993-04-27' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (202, N'CLOIR', CAST(N'1994-04-27' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (203, N'CLORICE', CAST(N'2001-05-14' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (204, N'CLOTILDE', CAST(N'2003-04-23' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (205, N'CLÓVIS', CAST(N'2005-05-07' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (206, N'CONSUELO', CAST(N'1994-04-17' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (207, N'CRESCELDA', CAST(N'2003-04-29' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (208, N'CRISTAL', CAST(N'1998-04-24' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (209, N'CRISTIAN', CAST(N'1994-05-04' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (210, N'CRISTIANE', CAST(N'1990-04-26' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (211, N'CRISTIANI', CAST(N'2002-04-18' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (212, N'CRISTIANO', CAST(N'1993-05-08' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (213, N'CRISTINA', CAST(N'1989-04-29' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (214, N'CRISTINE', CAST(N'2003-04-23' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (215, N'CRYSTIAN', CAST(N'1991-05-04' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (216, N'CYNTHIA', CAST(N'1998-04-22' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (217, N'CYNTIA', CAST(N'1999-05-01' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (218, N'DAGHI', CAST(N'2001-04-17' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (219, N'DAIANE', CAST(N'1998-05-02' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (220, N'DAILANE', CAST(N'1998-04-28' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (221, N'DAISON', CAST(N'1997-04-26' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (222, N'DALVA', CAST(N'2004-05-14' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (223, N'DAMARIS', CAST(N'1993-04-30' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (224, N'DANIEL', CAST(N'1997-04-18' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (225, N'DANIELA', CAST(N'1987-05-09' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (226, N'DANIELE', CAST(N'1996-04-22' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (227, N'DANIELI', CAST(N'1989-04-22' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (228, N'DANIELLA', CAST(N'2001-05-10' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (229, N'DANILO', CAST(N'1999-05-03' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (230, N'DANUSA', CAST(N'2002-05-05' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (231, N'DANYELLA', CAST(N'1988-04-28' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (232, N'DARCI', CAST(N'2005-05-07' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (233, N'DARCIO', CAST(N'1991-04-28' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (234, N'DARLAN', CAST(N'2002-04-28' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (235, N'DASIO', CAST(N'1987-04-23' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (236, N'DAVI', CAST(N'1992-05-14' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (237, N'DAVID', CAST(N'1986-05-11' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (238, N'DAYANA', CAST(N'1992-04-26' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (239, N'DAYANE', CAST(N'2003-05-04' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (240, N'DEBORA', CAST(N'1997-04-30' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (241, N'DÉBORA', CAST(N'2005-04-19' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (242, N'DEISE', CAST(N'1989-05-12' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (243, N'DEISY', CAST(N'1998-04-23' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (244, N'DEIVID', CAST(N'2003-05-01' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (245, N'DEIZE', CAST(N'2002-04-30' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (246, N'DEJAIR', CAST(N'1996-05-09' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (247, N'DEJANE', CAST(N'2001-05-12' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (248, N'DELÇONIR', CAST(N'2004-04-26' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (249, N'DENER', CAST(N'1989-05-04' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (250, N'DENICSON', CAST(N'1999-05-10' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (251, N'DENIDE', CAST(N'1995-04-20' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (252, N'DENIR', CAST(N'1986-04-18' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (253, N'DENISE', CAST(N'1994-04-22' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (254, N'DHAIANE', CAST(N'1999-04-26' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (255, N'DHULIAN', CAST(N'2002-05-03' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (256, N'DIANA', CAST(N'1998-04-23' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (257, N'DIEGO', CAST(N'1997-05-08' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (258, N'DIENIFER', CAST(N'2002-04-19' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (259, N'DILMARA', CAST(N'1988-05-07' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (260, N'DILSON', CAST(N'2000-06-15' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (261, N'DIMAS', CAST(N'1996-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (262, N'DINÁ', CAST(N'1998-05-09' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (263, N'DINO', CAST(N'2001-05-04' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (264, N'DIOGO', CAST(N'1998-04-28' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (265, N'DIPAULA', CAST(N'1987-04-21' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (266, N'DIRCE', CAST(N'1989-05-10' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (267, N'DIRLENE', CAST(N'1999-04-26' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (268, N'DJANINE', CAST(N'1992-05-06' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (269, N'DOLANTINA', CAST(N'2001-04-23' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (270, N'DOMINGOS', CAST(N'1988-04-26' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (271, N'DONATO', CAST(N'1987-04-30' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (272, N'DONISETE', CAST(N'2005-04-19' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (273, N'DONIZETE', CAST(N'1996-05-09' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (274, N'DORANEI', CAST(N'2004-04-25' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (275, N'DÓRIS', CAST(N'2002-05-13' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (276, N'DOUGLAS', CAST(N'1998-05-08' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (277, N'DOUVINA', CAST(N'1989-04-22' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (278, N'DUCINEI', CAST(N'2003-04-30' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (279, N'EDEGAR', CAST(N'1986-05-14' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (280, N'EDER', CAST(N'1993-04-24' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (281, N'EDESIO', CAST(N'1993-05-13' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (282, N'EDGAR', CAST(N'1987-04-27' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (283, N'EDILAINE', CAST(N'1994-05-08' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (284, N'EDILCE', CAST(N'1994-04-21' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (285, N'EDILON', CAST(N'2001-05-05' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (286, N'EDILSON', CAST(N'1989-04-29' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (287, N'EDIMILSON', CAST(N'1999-05-06' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (288, N'EDINA', CAST(N'2002-04-22' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (289, N'EDINETE', CAST(N'1991-04-18' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (290, N'EDIRLENE', CAST(N'2003-04-28' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (291, N'EDISSAMAR', CAST(N'1994-05-01' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (292, N'EDITE', CAST(N'2002-05-06' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (293, N'EDITHE', CAST(N'2003-04-26' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (294, N'EDLAR', CAST(N'2006-04-28' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (295, N'EDMILSON', CAST(N'1989-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (296, N'EDMIRA', CAST(N'1992-04-23' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (297, N'EDMU', CAST(N'1996-05-10' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (298, N'EDNA', CAST(N'2005-05-08' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (299, N'EDSON', CAST(N'2004-04-19' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (300, N'EDUARDA', CAST(N'1993-04-30' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (301, N'EDUARDO', CAST(N'2002-04-29' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (302, N'EDVALDO', CAST(N'1993-05-12' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (303, N'EDVANIA', CAST(N'2004-05-07' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (304, N'EDY', CAST(N'2004-04-21' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (305, N'EGICELDA', CAST(N'2004-04-30' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (306, N'ELAÍ', CAST(N'1993-05-11' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (307, N'ELAINE', CAST(N'1986-04-28' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (308, N'ELAVAINE', CAST(N'1992-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (309, N'ÉLCINR', CAST(N'2005-05-01' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (310, N'ELEN', CAST(N'1989-05-09' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (311, N'ELENIR', CAST(N'1998-04-25' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (312, N'ELENITA', CAST(N'1989-05-13' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (313, N'ELI', CAST(N'2001-04-21' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (314, N'ELIANA', CAST(N'1993-05-04' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (315, N'ELIANE', CAST(N'1989-04-26' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (316, N'ÉLIDA', CAST(N'1996-04-21' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (317, N'ELIDIA', CAST(N'1995-05-14' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (318, N'ELIETE', CAST(N'2002-05-01' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (319, N'ELIS', CAST(N'1995-04-30' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (320, N'ELISA', CAST(N'2001-05-12' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (321, N'ELISABETH', CAST(N'1995-04-30' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (322, N'ELISANDRA', CAST(N'1996-05-10' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (323, N'ELISANGELA', CAST(N'2001-04-22' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (324, N'ELISIANA', CAST(N'1998-05-09' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (325, N'ELISIANE', CAST(N'1988-05-11' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (326, N'ELIVAINE', CAST(N'1998-04-27' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (327, N'ELIZ', CAST(N'2003-05-04' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (328, N'ELIZABETE', CAST(N'1988-04-27' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (329, N'ELIZABETH', CAST(N'1989-04-18' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (330, N'ELIZETE', CAST(N'1995-04-24' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (331, N'ELIZIANE', CAST(N'1989-04-18' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (332, N'ELMA', CAST(N'1996-05-13' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (333, N'ELOI', CAST(N'1996-04-18' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (334, N'ELOISA', CAST(N'2001-05-01' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (335, N'ELOIZA', CAST(N'1996-04-22' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (336, N'ELSON', CAST(N'1988-05-05' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (337, N'ELZA', CAST(N'1998-05-14' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (338, N'ELZIRA', CAST(N'2005-04-18' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (339, N'EMA', CAST(N'1998-04-20' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (340, N'EMANOELLA', CAST(N'2004-04-21' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (341, N'EMERSON', CAST(N'1986-04-25' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (342, N'EMILIO', CAST(N'1999-05-07' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (343, N'ENEDINA', CAST(N'1991-04-23' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (344, N'ENI', CAST(N'1997-05-07' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (345, N'ÊNIO', CAST(N'1997-04-25' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (346, N'ERALDO', CAST(N'1991-05-09' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (347, N'ERIANE', CAST(N'1987-04-24' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (348, N'ERICA', CAST(N'2001-05-09' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (349, N'ERICSON', CAST(N'1991-05-05' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (350, N'ERIKA', CAST(N'1997-05-01' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (351, N'ERNALDA', CAST(N'1998-04-19' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (352, N'ESLAINE', CAST(N'1990-04-26' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (353, N'ESTELA', CAST(N'2004-04-30' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (354, N'ESTELLA', CAST(N'1992-04-20' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (355, N'ESTER', CAST(N'2005-04-19' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (356, N'ESTEVO', CAST(N'1996-04-21' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (357, N'EUGÊNIA', CAST(N'2002-05-11' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (358, N'EUNICE', CAST(N'1988-04-30' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (359, N'EVA', CAST(N'2001-04-18' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (360, N'EVANDRO', CAST(N'1991-05-10' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (361, N'EVELIN', CAST(N'2001-05-11' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (362, N'EVERILDE', CAST(N'1986-05-07' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (363, N'EVERTON', CAST(N'2002-05-03' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (364, N'EVILIN', CAST(N'2004-04-23' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (365, N'FABIANA', CAST(N'1988-04-30' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (366, N'FABIANE', CAST(N'1993-04-29' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (367, N'FABIANO', CAST(N'1986-05-05' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (368, N'FABILI', CAST(N'1992-05-13' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (369, N'FABINA', CAST(N'1989-05-10' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (370, N'FABIO', CAST(N'2001-04-25' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (371, N'FÁBIO', CAST(N'1996-05-02' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (372, N'FABÍOLA', CAST(N'1992-05-13' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (373, N'FABÍULA', CAST(N'1989-05-03' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (374, N'FABRÍCIA', CAST(N'1991-05-02' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (375, N'FABRICIO', CAST(N'2004-04-27' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (376, N'FABRINE', CAST(N'1991-05-08' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (377, N'FATIMA', CAST(N'1995-04-27' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (378, N'FÁTIMA', CAST(N'2001-05-04' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (379, N'FELIPE', CAST(N'1991-04-26' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (380, N'FERNANDA', CAST(N'1989-05-13' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (381, N'FERNANDO', CAST(N'1988-04-22' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (382, N'FIDELIS', CAST(N'1991-04-22' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (383, N'FILIPE', CAST(N'1988-04-28' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (384, N'FILIPI', CAST(N'2001-04-27' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (385, N'FILIPPE', CAST(N'1992-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (386, N'FLAVIA', CAST(N'1988-05-03' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (387, N'FLÁVIA', CAST(N'1992-04-27' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (388, N'FLAVIANE', CAST(N'2002-05-09' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (389, N'FLAVIO', CAST(N'1992-04-19' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (390, N'FLÁVIO', CAST(N'1988-04-21' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (391, N'FRANCELY', CAST(N'2001-05-01' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (392, N'FRANCIANE', CAST(N'1994-04-29' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (393, N'FRANCICO', CAST(N'2005-05-14' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (394, N'FRANCIELA', CAST(N'1989-04-26' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (395, N'FRANCIELE', CAST(N'1996-04-29' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (396, N'FRANCIELI', CAST(N'1988-05-13' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (397, N'FRANCIELLE', CAST(N'1991-05-14' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (398, N'FRANCILA', CAST(N'1993-04-28' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (399, N'FRANCINE', CAST(N'1999-05-04' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (400, N'FRANCINI', CAST(N'1987-04-23' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (401, N'FRANCISCO', CAST(N'1989-05-12' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (402, N'FRANK', CAST(N'1992-05-13' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (403, N'FULVIA', CAST(N'2004-05-14' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (404, N'GABI', CAST(N'1989-05-12' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (405, N'GABRIEL', CAST(N'2005-04-21' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (406, N'GABRIELA', CAST(N'1987-05-07' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (407, N'GABRIELLA', CAST(N'2004-04-20' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (408, N'GABRIELLE', CAST(N'1992-04-21' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (409, N'GABRIELLI', CAST(N'2001-04-26' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (410, N'GAEL', CAST(N'2004-04-28' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (411, N'GAETANO', CAST(N'1990-04-23' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (412, N'GEANINE', CAST(N'2002-05-09' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (413, N'GEIME', CAST(N'2005-04-17' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (414, N'GENECI', CAST(N'1988-04-28' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (415, N'GENESIA', CAST(N'1988-04-22' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (416, N'GENÉSIO', CAST(N'1989-05-13' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (417, N'GENISON', CAST(N'1998-05-09' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (418, N'GENIVAL', CAST(N'2005-04-24' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (420, N'GEORGETE', CAST(N'1990-05-10' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (421, N'GEORGIA', CAST(N'1991-05-04' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (422, N'GEORGINA', CAST(N'1991-04-20' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (423, N'GERALDO', CAST(N'2005-05-07' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (424, N'GERUSA', CAST(N'1993-05-10' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (425, N'GERUZA', CAST(N'1997-04-30' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (426, N'GESIANE', CAST(N'1994-04-19' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (427, N'GESIEL', CAST(N'2003-04-29' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (428, N'GESIELE', CAST(N'2006-05-14' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (429, N'GESSICA', CAST(N'2004-04-17' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (430, N'GHILHERMINA', CAST(N'1988-05-10' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (431, N'GIAN', CAST(N'2002-05-11' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (432, N'GIANCARLO', CAST(N'1989-05-08' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (433, N'GIANNE', CAST(N'2003-05-09' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (434, N'GILBERTO', CAST(N'1991-04-21' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (435, N'GILCA', CAST(N'1989-05-12' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (436, N'GILMARA', CAST(N'1991-05-13' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (437, N'GILSEIA', CAST(N'2001-05-03' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (438, N'GILSIANE', CAST(N'1995-04-21' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (439, N'GILTEMAR', CAST(N'2006-04-19' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (440, N'GIOFAR', CAST(N'1988-04-27' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (441, N'GIORDANA', CAST(N'2005-05-09' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (442, N'GIORGIO', CAST(N'1999-04-30' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (443, N'GIOVAI', CAST(N'1999-05-08' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (444, N'GIOVANA', CAST(N'1992-05-13' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (445, N'GIOVANI', CAST(N'1996-05-04' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (446, N'GIOVANNA', CAST(N'2003-04-24' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (447, N'GIOVANNI', CAST(N'1995-04-23' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (448, N'GISELA', CAST(N'2001-05-03' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (449, N'GISELE', CAST(N'2002-04-30' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (450, N'GISELLE', CAST(N'1989-05-14' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (451, N'GISLAINE', CAST(N'1996-04-25' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (452, N'GISLENE', CAST(N'1996-04-20' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (453, N'GIULIA', CAST(N'1994-05-09' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (454, N'GIULIANO', CAST(N'1988-04-25' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (455, N'GIZELE', CAST(N'1998-05-04' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (456, N'GLACIS', CAST(N'1993-05-01' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (457, N'GLADIR', CAST(N'1988-05-04' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (458, N'GLADYS', CAST(N'1999-04-19' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (459, N'GLAUCE', CAST(N'1993-04-28' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (460, N'GLAUCI', CAST(N'1989-04-28' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (461, N'GLAUCIA', CAST(N'1999-04-21' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (462, N'GRACE', CAST(N'2001-05-07' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (463, N'GRACIELA', CAST(N'1998-04-29' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (464, N'GRASIELA', CAST(N'1999-05-07' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (465, N'GRASIELI', CAST(N'1988-04-29' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (466, N'GRAYCE', CAST(N'1988-04-29' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (467, N'GRAZIELA', CAST(N'1996-04-29' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (468, N'GRAZIELE', CAST(N'2002-04-19' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (469, N'GREGÓRIO', CAST(N'2005-04-26' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (470, N'GREICE', CAST(N'1992-04-17' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (471, N'GUGLIANA', CAST(N'1989-04-18' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (472, N'GUILHERME', CAST(N'1998-05-07' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (473, N'GUINTER', CAST(N'1997-04-30' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (474, N'GUSTAVO', CAST(N'1989-05-10' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (475, N'GUTEMBERG', CAST(N'1998-05-13' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (476, N'GUTO', CAST(N'1999-05-07' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (477, N'HAMILTON', CAST(N'1988-05-12' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (478, N'HEDI', CAST(N'1989-05-10' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (479, N'HEITOR', CAST(N'1994-05-11' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (480, N'HELDER', CAST(N'2002-04-25' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (481, N'HELEN', CAST(N'1989-04-28' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (482, N'HÉLEN', CAST(N'2002-04-29' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (483, N'HELENA', CAST(N'1988-04-30' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (484, N'HELENITA', CAST(N'1989-05-06' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (485, N'HELGA', CAST(N'1995-04-19' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (486, N'HÉLIO', CAST(N'2004-05-08' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (487, N'HELLEN', CAST(N'1991-05-11' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (488, N'HELOISA', CAST(N'1986-05-12' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (489, N'HELOÍSA', CAST(N'2002-05-14' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (490, N'HENRIQUE', CAST(N'1999-04-19' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (491, N'HÉRICA', CAST(N'1996-04-26' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (492, N'HERMELINDA', CAST(N'1997-04-27' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (493, N'HUAINA', CAST(N'1990-04-20' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (494, N'HUMBERTO', CAST(N'1996-05-12' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (495, N'IANA', CAST(N'1997-05-03' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (496, N'IANY', CAST(N'1999-05-10' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (497, N'IARA', CAST(N'2003-04-26' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (498, N'IBANEZ', CAST(N'2005-05-06' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (499, N'ILCA', CAST(N'1998-05-12' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (500, N'ILIANE', CAST(N'1986-04-18' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (501, N'INAIANE', CAST(N'1992-04-18' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (502, N'INDIANA', CAST(N'1999-05-06' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (503, N'INÊS', CAST(N'1999-04-18' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (504, N'INGRID', CAST(N'1990-04-17' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (505, N'IOLANDA', CAST(N'1993-05-06' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (506, N'IOMAR', CAST(N'2004-05-05' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (507, N'IONARA', CAST(N'1989-05-13' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (508, N'IRACI', CAST(N'1994-04-23' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (509, N'IRANI', CAST(N'2003-05-09' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (510, N'IRENE', CAST(N'1998-04-25' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (511, N'IRINEA', CAST(N'2001-04-23' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (512, N'ISABEL', CAST(N'2002-05-06' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (513, N'ISABELA', CAST(N'1999-04-27' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (514, N'ISABELE', CAST(N'2003-04-26' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (515, N'ISABELLA', CAST(N'2000-06-15' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (516, N'ISABELLE', CAST(N'1989-05-13' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (517, N'ISADORA', CAST(N'1989-05-08' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (518, N'ISOLETE', CAST(N'2004-05-10' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (519, N'ITAMAR', CAST(N'2001-04-21' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (520, N'IVAN', CAST(N'1997-04-20' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (521, N'IVANI', CAST(N'1988-05-09' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (522, N'IVANILDE', CAST(N'1986-05-04' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (523, N'IVETE', CAST(N'1998-04-28' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (524, N'IVO', CAST(N'1991-05-09' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (525, N'IVONE', CAST(N'2002-04-17' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (526, N'IVONETE', CAST(N'1993-05-07' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (527, N'IZABEL', CAST(N'2001-05-09' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (528, N'IZABELLE', CAST(N'2004-05-03' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (529, N'IZABELLY', CAST(N'1996-04-28' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (530, N'IZAIAS', CAST(N'1998-05-10' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (531, N'IZOLETE', CAST(N'1992-05-03' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (532, N'IZONIR', CAST(N'1988-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (533, N'JACIARA', CAST(N'2003-05-13' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (534, N'JACKELINE', CAST(N'2003-05-01' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (535, N'JADE', CAST(N'1994-04-20' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (536, N'JADNA', CAST(N'1990-04-23' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (537, N'JAIMARA', CAST(N'2003-05-07' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (538, N'JAIME', CAST(N'2005-04-27' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (539, N'JAIR', CAST(N'1989-04-19' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (540, N'JAIRA', CAST(N'2005-04-27' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (541, N'JAIRO', CAST(N'2004-04-30' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (542, N'JAISON', CAST(N'1994-04-28' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (543, N'JAMILE', CAST(N'2002-04-23' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (544, N'JANAINA', CAST(N'1998-05-04' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (545, N'JANAYNA', CAST(N'1996-05-08' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (546, N'JANDIARA', CAST(N'1997-04-18' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (547, N'JANDIRA', CAST(N'2002-04-29' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (548, N'JANETE', CAST(N'2004-05-08' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (549, N'JANIA', CAST(N'2004-04-20' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (550, N'JAQUELINE', CAST(N'2004-04-25' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (551, N'JARDEL', CAST(N'1991-05-05' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (552, N'JAYCE', CAST(N'1998-04-28' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (553, N'JAYME', CAST(N'1994-04-21' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (554, N'JEANE', CAST(N'1995-04-22' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (555, N'JEFERSON', CAST(N'1998-05-14' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (556, N'JESSICA', CAST(N'1993-05-02' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (557, N'JÉSSICA', CAST(N'1988-04-25' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (558, N'JEVERSON', CAST(N'1994-04-25' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (559, N'JHON', CAST(N'1999-04-19' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (560, N'JHONIFFER', CAST(N'1991-04-30' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (561, N'JJAQUELINE', CAST(N'1994-05-14' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (562, N'JOACIRTON', CAST(N'2005-04-25' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (563, N'JOANA', CAST(N'1994-05-11' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (564, N'JOANILDES', CAST(N'1997-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (565, N'JOAO', CAST(N'1996-05-08' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (566, N'JOÃO', CAST(N'2001-05-03' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (567, N'JOAQUIM', CAST(N'2003-04-29' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (568, N'JOCELIR', CAST(N'1986-05-14' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (569, N'JOÉ', CAST(N'1998-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (570, N'JOELI', CAST(N'2002-04-30' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (571, N'JOELMA', CAST(N'1994-05-05' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (572, N'JOELSON', CAST(N'1991-05-13' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (573, N'JOICE', CAST(N'1996-04-29' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (574, N'JOISE', CAST(N'2002-05-07' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (575, N'JONAS', CAST(N'2001-05-14' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (576, N'JONATAS', CAST(N'2005-04-22' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (577, N'JONI', CAST(N'2001-05-07' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (578, N'JONIA', CAST(N'2005-05-13' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (579, N'JORGE', CAST(N'1996-05-11' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (580, N'JOSE', CAST(N'1997-04-25' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (581, N'JOSÉ', CAST(N'1989-04-26' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (582, N'JOSEANI', CAST(N'1988-05-01' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (583, N'JOSEFINA', CAST(N'1994-04-18' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (584, N'JOSELE', CAST(N'2003-05-05' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (585, N'JOSELI', CAST(N'1992-05-04' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (586, N'JOSELITA', CAST(N'1991-04-30' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (587, N'JOSETE', CAST(N'1994-04-22' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (588, N'JOSIANE', CAST(N'1994-04-25' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (589, N'JOSIAS', CAST(N'2005-05-03' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (590, N'JOSSARA', CAST(N'1989-04-22' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (591, N'JUAN', CAST(N'2001-05-09' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (592, N'JUCÉLIA', CAST(N'1989-05-04' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (593, N'JUCILENE', CAST(N'1993-04-18' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (594, N'JUCIMARA', CAST(N'1995-05-04' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (595, N'JULIA', CAST(N'1995-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (596, N'JÚLIA', CAST(N'2005-04-25' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (597, N'JULIANA', CAST(N'2001-05-07' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (598, N'JULIANE', CAST(N'1993-04-28' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (599, N'JULIANO', CAST(N'1987-05-13' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (600, N'JULICE', CAST(N'2006-04-30' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (601, N'JULIE', CAST(N'2005-04-28' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (602, N'JULIO', CAST(N'1994-04-30' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (603, N'JÚLIO', CAST(N'1996-05-14' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (604, N'JUNIOR', CAST(N'1998-05-10' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (605, N'JURANDIR', CAST(N'1987-05-13' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (606, N'JUREMA', CAST(N'2004-05-03' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (607, N'JUSLEINE', CAST(N'2003-04-25' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (608, N'JUSSANE', CAST(N'2005-05-04' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (609, N'KAINÃ', CAST(N'1993-04-30' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (610, N'KALINKA', CAST(N'2003-04-20' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (611, N'KAMILA', CAST(N'1994-04-17' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (612, N'KAREN', CAST(N'1988-05-09' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (613, N'KARINA', CAST(N'2001-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (614, N'KARINE', CAST(N'2006-05-03' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (615, N'KARINI', CAST(N'1990-05-07' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (616, N'KARLA', CAST(N'1989-04-25' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (617, N'KAROLAINE', CAST(N'1986-04-30' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (618, N'KAROLINE', CAST(N'1993-04-28' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (619, N'KATHERINE', CAST(N'1998-05-04' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (620, N'KATIA', CAST(N'1991-05-11' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (621, N'KATIANA', CAST(N'1991-05-13' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (622, N'KATIANE', CAST(N'1988-05-13' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (623, N'KATIUCE', CAST(N'1994-04-29' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (624, N'KATLYN', CAST(N'1989-05-02' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (625, N'KAUANY', CAST(N'1999-04-20' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (626, N'KELEN', CAST(N'1998-05-03' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (627, N'KELLEN', CAST(N'1993-04-24' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (628, N'KELLY', CAST(N'1998-04-19' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (629, N'KELVIN', CAST(N'1992-05-12' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (630, N'KENIA', CAST(N'1993-05-06' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (631, N'KITANIA', CAST(N'2004-04-29' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (632, N'KLEBER', CAST(N'2001-05-04' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (633, N'LAIR', CAST(N'1992-05-10' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (634, N'LAIS', CAST(N'1986-04-17' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (635, N'LAÍS', CAST(N'1989-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (636, N'LAIZ', CAST(N'1989-04-25' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (637, N'LARA', CAST(N'2002-05-12' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (638, N'LARISSA', CAST(N'1998-05-11' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (639, N'LAUDELINA', CAST(N'1999-05-07' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (640, N'LAURA', CAST(N'1995-05-03' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (641, N'LAURETE', CAST(N'1986-05-10' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (642, N'LAWANDA', CAST(N'1994-04-30' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (643, N'LEANDRO', CAST(N'1995-04-19' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (644, N'LEDI', CAST(N'2002-05-12' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (645, N'LEDIO', CAST(N'2002-04-24' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (646, N'LEIDIANE', CAST(N'1989-05-05' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (647, N'LENIR', CAST(N'1988-05-13' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (648, N'LENITA', CAST(N'1990-05-08' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (649, N'LENYR', CAST(N'2000-06-15' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (650, N'LEO', CAST(N'1995-05-01' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (651, N'LEONARDO', CAST(N'1986-04-26' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (652, N'LEONE', CAST(N'1991-05-14' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (653, N'LEONETE', CAST(N'2001-04-27' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (654, N'LEONEZA', CAST(N'1994-05-07' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (655, N'LEONIDAS', CAST(N'1998-05-10' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (656, N'LETICIA', CAST(N'2000-06-15' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (657, N'LETICÍA', CAST(N'1994-05-10' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (658, N'LETÍCIA', CAST(N'1988-05-01' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (659, N'LIA', CAST(N'1996-05-11' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (660, N'LIANA', CAST(N'1996-05-08' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (661, N'LIANE', CAST(N'1986-04-18' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (662, N'LIBERA', CAST(N'2005-05-11' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (663, N'LIDIANE', CAST(N'1993-05-12' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (664, N'LIEGE', CAST(N'1998-05-14' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (665, N'LILIAN', CAST(N'1999-04-27' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (666, N'LILIANE', CAST(N'1993-05-05' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (667, N'LIS', CAST(N'1997-04-19' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (668, N'LISABETE', CAST(N'1991-05-06' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (669, N'LISANDRE', CAST(N'2003-04-26' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (670, N'LISANI', CAST(N'2005-05-08' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (671, N'LISIANE', CAST(N'1990-05-08' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (672, N'LITICIA', CAST(N'1996-05-09' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (673, N'LIVIA', CAST(N'1999-04-20' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (674, N'LÍVIA', CAST(N'1994-04-18' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (675, N'LIZANDRA', CAST(N'1989-04-27' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (676, N'LIZIANE', CAST(N'1994-04-30' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (677, N'LOIR', CAST(N'1996-05-12' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (678, N'LORENI', CAST(N'1998-05-09' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (679, N'LORENZO', CAST(N'1994-04-25' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (680, N'LORIS', CAST(N'2003-04-22' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (681, N'LORIVAL', CAST(N'1994-05-11' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (682, N'LOUISE', CAST(N'2003-05-04' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (683, N'LOURDES', CAST(N'2003-05-12' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (684, N'LOURENÇO', CAST(N'2004-04-28' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (685, N'LOURIVAL', CAST(N'2002-04-30' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (686, N'LUAN', CAST(N'2005-04-21' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (687, N'LUANA', CAST(N'1989-04-27' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (688, N'LUCAS', CAST(N'1986-05-10' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (689, N'LUCIA', CAST(N'1991-05-09' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (690, N'LÚCIA', CAST(N'1991-05-02' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (691, N'LUCIANA', CAST(N'1998-05-10' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (692, N'LUCIANE', CAST(N'2003-04-17' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (693, N'LUCIANI', CAST(N'1998-05-10' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (694, N'LUCIANO', CAST(N'2002-04-20' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (695, N'LUCIELE', CAST(N'1996-05-10' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (696, N'LUCIMAR', CAST(N'1989-05-14' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (697, N'LUCINARA', CAST(N'2006-04-22' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (698, N'LUCINDA', CAST(N'1997-05-10' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (699, N'LUCINEIA', CAST(N'1994-05-05' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (700, N'LUCIO', CAST(N'1998-04-19' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (701, N'LÚCIO', CAST(N'2004-04-17' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (702, N'LUIS', CAST(N'2004-04-23' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (703, N'LUÍS', CAST(N'2004-04-28' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (704, N'LUISA', CAST(N'1999-05-12' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (705, N'LUIZ', CAST(N'1993-04-20' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (706, N'LUIZA', CAST(N'2003-04-19' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (707, N'LUIZE', CAST(N'2005-04-26' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (708, N'LURDES', CAST(N'1994-04-19' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (709, N'LURDETE', CAST(N'1998-05-12' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (710, N'MABEL', CAST(N'1986-05-10' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (711, N'MABÍOLA', CAST(N'1992-04-26' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (712, N'MADALENA', CAST(N'2004-04-26' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (713, N'MADELAINE', CAST(N'1996-04-26' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (714, N'MAGALI', CAST(N'1989-05-03' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (715, N'MAGLIANI', CAST(N'1986-05-09' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (716, N'MAGNO', CAST(N'1995-05-12' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (717, N'MAIARA', CAST(N'2003-05-03' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (718, N'MAINDRE', CAST(N'1987-05-08' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (719, N'MAIRA', CAST(N'1996-05-01' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (720, N'MAÍRA', CAST(N'2003-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (721, N'MAIULI', CAST(N'2001-04-27' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (722, N'MALÚ', CAST(N'1993-05-01' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (723, N'MANOEL', CAST(N'2001-05-01' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (724, N'MANOELA', CAST(N'1988-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (725, N'MANUELA', CAST(N'1992-05-05' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (726, N'MARA', CAST(N'2002-05-05' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (727, N'MARCEL', CAST(N'1993-05-09' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (728, N'MARCELA', CAST(N'1990-05-07' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (729, N'MARCELE', CAST(N'1994-04-26' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (730, N'MARCELO', CAST(N'1991-05-03' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (731, N'MARCIA', CAST(N'1989-04-19' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (732, N'MÁRCIA', CAST(N'1996-04-25' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (733, N'MARCIEL', CAST(N'1998-04-20' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (734, N'MARCIO', CAST(N'1993-05-05' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (735, N'MARCO', CAST(N'2006-04-21' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (736, N'MARCOS', CAST(N'1987-04-18' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (737, N'MARCUS', CAST(N'1996-04-25' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (738, N'MARGARETE', CAST(N'2001-04-28' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (739, N'MARGARETH', CAST(N'1989-05-14' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (740, N'MARGARIDA', CAST(N'2005-05-02' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (741, N'MARI', CAST(N'1999-04-27' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (742, N'MARIA', CAST(N'1988-04-21' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (743, N'MARIAH', CAST(N'1988-05-08' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (744, N'MARIAM', CAST(N'1998-04-17' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (745, N'MARIANA', CAST(N'1998-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (746, N'MARIANE', CAST(N'1994-04-23' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (747, N'MARIANGELA', CAST(N'1998-04-27' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (748, N'MARIANI', CAST(N'1998-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (749, N'MARIANKA', CAST(N'1995-04-23' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (750, N'MARIDIONI', CAST(N'1987-04-25' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (751, N'MARIELE', CAST(N'2006-05-07' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (752, N'MARIENE', CAST(N'2002-05-10' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (753, N'MARILDA', CAST(N'2006-05-05' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (754, N'MARILÉIA', CAST(N'1997-04-22' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (755, N'MARILEIDE', CAST(N'1989-04-30' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (756, N'MARILENE', CAST(N'1999-05-09' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (757, N'MARILETE', CAST(N'2004-05-09' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (758, N'MARILIA', CAST(N'1991-05-12' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (759, N'MARÍLIA', CAST(N'2001-05-14' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (760, N'MARILIZI', CAST(N'1993-04-22' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (761, N'MARINA', CAST(N'1988-04-24' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (762, N'MARINEZ', CAST(N'1998-04-30' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (763, N'MARIO', CAST(N'2003-05-11' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (764, N'MARISA', CAST(N'2005-04-23' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (765, N'MARISE', CAST(N'2001-04-30' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (766, N'MARISSOL', CAST(N'1987-04-26' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (767, N'MARISTELA', CAST(N'1993-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (768, N'MARISTER', CAST(N'1998-04-26' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (769, N'MARITELMA', CAST(N'2003-05-10' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (770, N'MARIVANE', CAST(N'1988-04-17' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (771, N'MARIZA', CAST(N'1989-04-30' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (772, N'MARJA', CAST(N'2002-04-23' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (773, N'MARLENE', CAST(N'2001-04-25' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (774, N'MARLI', CAST(N'1997-05-11' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (775, N'MARLON', CAST(N'2002-04-21' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (776, N'MARTA', CAST(N'1997-04-24' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (777, N'MARTINA', CAST(N'2001-04-17' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (778, N'MARTINHO', CAST(N'1991-04-19' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (779, N'MATEUS', CAST(N'2005-04-23' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (780, N'MATHEUS', CAST(N'1991-05-13' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (781, N'MATIO', CAST(N'1992-04-18' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (782, N'MAURI', CAST(N'2003-04-29' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (783, N'MAURICIO', CAST(N'1989-05-05' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (784, N'MAURÍCIO', CAST(N'1996-04-29' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (785, N'MAURO', CAST(N'1994-04-21' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (786, N'MAXIMILIANO', CAST(N'2001-04-26' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (787, N'MAXTAI', CAST(N'1989-05-13' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (788, N'MAYA', CAST(N'1986-04-29' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (789, N'MELISSA', CAST(N'2002-04-22' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (790, N'MERE', CAST(N'1999-04-29' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (791, N'MERICE', CAST(N'1989-05-11' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (792, N'MESSIAS', CAST(N'1989-05-11' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (793, N'MICHEL', CAST(N'1993-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (794, N'MICHELE', CAST(N'1998-04-28' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (795, N'MICHELINE', CAST(N'1998-05-07' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (796, N'MICHELL', CAST(N'1994-05-07' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (797, N'MICHELLA', CAST(N'1992-04-25' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (798, N'MICHELLE', CAST(N'1986-05-09' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (799, N'MIGUEL', CAST(N'2004-05-11' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (800, N'MILENA', CAST(N'1993-05-02' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (801, N'MILENE', CAST(N'2002-05-06' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (802, N'MILENY', CAST(N'2004-04-29' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (803, N'MINERVINA', CAST(N'2003-04-27' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (804, N'MIRELA', CAST(N'2001-05-01' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (805, N'MIRIA', CAST(N'2003-04-18' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (806, N'MIRIAM', CAST(N'2003-05-12' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (807, N'MIRIAN', CAST(N'1998-04-26' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (808, N'MIRIANA', CAST(N'2002-04-19' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (809, N'MIRLEIN', CAST(N'1988-04-25' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (810, N'MIRNA', CAST(N'1992-05-14' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (811, N'MIRTES', CAST(N'2005-04-18' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (812, N'MOACIR', CAST(N'1988-04-29' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (813, N'MOARA', CAST(N'1998-05-03' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (814, N'MOISES', CAST(N'1996-05-14' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (815, N'MONARA', CAST(N'1994-05-05' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (816, N'MONICA', CAST(N'1994-05-09' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (817, N'MÔNICA', CAST(N'1998-05-02' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (818, N'MONIQUE', CAST(N'1996-05-11' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (819, N'MORGANA', CAST(N'1999-05-05' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (820, N'MURIEL', CAST(N'1990-04-20' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (821, N'MURILO', CAST(N'2005-05-02' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (822, N'MYCHELLA', CAST(N'2001-05-04' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (823, N'NADIA', CAST(N'2006-05-06' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (824, N'NADIELLE', CAST(N'1999-04-21' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (825, N'NADIR', CAST(N'1992-05-12' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (826, N'NAIARA', CAST(N'1997-04-23' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (827, N'NAILDE', CAST(N'1993-05-01' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (828, N'NAIR', CAST(N'1991-04-30' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (829, N'NALINLE', CAST(N'2001-05-09' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (830, N'NANCY', CAST(N'1996-05-13' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (831, N'NARIMAN', CAST(N'1998-05-05' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (832, N'NATALIA', CAST(N'1989-05-02' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (833, N'NATÁLIA', CAST(N'2005-05-10' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (834, N'NATALINA', CAST(N'2003-05-08' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (835, N'NAZARETE', CAST(N'2002-04-28' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (836, N'NEIDE', CAST(N'1994-05-02' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (837, N'NEIVA', CAST(N'1989-05-06' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (838, N'NELCIDES', CAST(N'2003-04-27' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (839, N'NELSON', CAST(N'1996-05-04' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (840, N'NELZO', CAST(N'1997-04-25' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (841, N'NERCI', CAST(N'1986-05-05' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (842, N'NESTOR', CAST(N'1993-05-02' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (843, N'NEUSA', CAST(N'2005-05-01' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (844, N'NEZIO', CAST(N'1998-05-03' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (845, N'NICOLE', CAST(N'1988-04-29' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (846, N'NILDO', CAST(N'1993-04-21' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (847, N'NIRA', CAST(N'2005-05-01' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (848, N'NOELI', CAST(N'1997-04-26' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (849, N'NOIO', CAST(N'1993-05-12' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (850, N'NORBERTO', CAST(N'1986-05-14' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (851, N'NÓRDIA', CAST(N'1989-04-22' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (852, N'NORIVAL', CAST(N'1996-05-10' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (853, N'NORMA', CAST(N'1994-04-24' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (854, N'NORTON', CAST(N'1989-05-12' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (855, N'NUNO', CAST(N'1986-05-14' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (856, N'OCTÁVIO', CAST(N'1989-05-14' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (857, N'ODETE', CAST(N'1987-05-03' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (858, N'OLGA', CAST(N'1998-05-04' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (859, N'OLIVIA', CAST(N'2003-05-05' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (860, N'OPHÉLIA', CAST(N'2000-06-15' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (861, N'ORFA', CAST(N'1991-04-23' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (862, N'ORIETA', CAST(N'1990-04-25' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (863, N'OSMAR', CAST(N'2005-05-07' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (864, N'OSÓRIO', CAST(N'1998-05-07' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (865, N'OSWALDO', CAST(N'1998-05-09' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (866, N'OTAVIO', CAST(N'1994-05-04' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (867, N'OTÁVIO', CAST(N'1987-04-22' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (868, N'OTTO', CAST(N'1986-04-23' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (869, N'OZANE', CAST(N'1991-05-05' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (870, N'OZIEL', CAST(N'1988-04-17' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (871, N'PAMELA', CAST(N'2002-04-17' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (872, N'PÂMELA', CAST(N'2002-05-06' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (873, N'PAOLA', CAST(N'1986-04-21' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (874, N'PATRICE', CAST(N'2005-05-03' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (875, N'PATRICIA', CAST(N'1989-04-28' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (876, N'PATRÍCIA', CAST(N'1990-04-26' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (877, N'PATRICK', CAST(N'2004-04-17' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (878, N'PAULA', CAST(N'1992-04-23' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (879, N'PAULINE', CAST(N'1990-05-07' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (880, N'PAULINO', CAST(N'2001-05-11' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (881, N'PAULO', CAST(N'1989-04-27' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (882, N'PEDRO', CAST(N'1998-04-26' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (883, N'PERCY', CAST(N'1991-04-25' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (884, N'PERICLES', CAST(N'1994-04-23' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (885, N'PÉRSIO', CAST(N'1992-04-22' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (886, N'PETTERSON', CAST(N'2003-04-29' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (887, N'PETTUS', CAST(N'2001-05-12' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (888, N'PETULA', CAST(N'1988-04-21' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (889, N'PIERO', CAST(N'1994-05-04' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (890, N'PRICILA', CAST(N'1996-04-28' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (891, N'PRISCILA', CAST(N'1990-05-03' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (892, N'QUELEN', CAST(N'1994-05-04' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (893, N'QUETRI', CAST(N'1994-05-13' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (894, N'RACHEL', CAST(N'1999-05-04' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (895, N'RAFAEL', CAST(N'1987-04-22' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (896, N'RAFAELA', CAST(N'1988-04-27' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (897, N'RAFAELLA', CAST(N'1999-04-22' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (898, N'RAIANE', CAST(N'1989-05-14' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (899, N'RAIMUNDA', CAST(N'2005-04-20' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (900, N'RAIMUNDO', CAST(N'2006-04-27' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (901, N'RAINÉRIA', CAST(N'1998-05-01' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (902, N'RAMON', CAST(N'2003-05-08' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (903, N'RAQUEL', CAST(N'2002-04-21' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (904, N'RAQUELLY', CAST(N'1988-05-03' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (905, N'RAUL', CAST(N'2003-04-27' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (906, N'RAVI', CAST(N'1999-04-19' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (907, N'RAYMUNDO', CAST(N'2001-05-08' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (908, N'READI', CAST(N'1996-04-30' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (909, N'REGIANE', CAST(N'1989-04-29' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (910, N'REGIANY', CAST(N'2004-05-12' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (911, N'REGINA', CAST(N'1999-05-07' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (912, N'REGINALDO', CAST(N'1989-04-20' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (913, N'REJANE', CAST(N'2003-05-10' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (914, N'RENAN', CAST(N'2002-04-25' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (915, N'RENATA', CAST(N'1993-04-20' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (916, N'RENATO', CAST(N'1993-05-13' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (917, N'RENISE', CAST(N'1993-04-18' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (918, N'RENOR', CAST(N'1986-05-14' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (919, N'RICARDO', CAST(N'1990-05-11' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (920, N'RICHARD', CAST(N'1988-05-10' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (921, N'RITA', CAST(N'1998-05-09' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (922, N'RITTA', CAST(N'1986-04-29' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (923, N'RIVELI', CAST(N'1996-05-08' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (924, N'ROBERTA', CAST(N'1998-04-20' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (925, N'ROBERTO', CAST(N'1986-04-20' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (926, N'ROBINALVA', CAST(N'2001-05-04' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (927, N'RODINEI', CAST(N'1998-04-23' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (928, N'RODOLFO', CAST(N'2002-05-02' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (929, N'RODRIGO', CAST(N'1997-04-19' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (930, N'ROGERIO', CAST(N'1992-05-14' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (931, N'ROGÉRIO', CAST(N'1997-05-13' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (932, N'ROMUALDO', CAST(N'1997-05-07' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (933, N'RONALDO', CAST(N'2002-05-07' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (934, N'ROQUE', CAST(N'1996-04-21' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (935, N'ROSA', CAST(N'2005-05-03' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (936, N'ROSALBA', CAST(N'1995-05-05' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (937, N'ROSALINA', CAST(N'1989-05-10' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (938, N'ROSALVA', CAST(N'2002-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (939, N'ROSANA', CAST(N'1989-04-27' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (940, N'ROSANE', CAST(N'1989-04-30' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (941, N'ROSANGELA', CAST(N'2005-04-17' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (942, N'ROSÂNGELA', CAST(N'2005-04-20' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (943, N'ROSE', CAST(N'1999-04-21' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (944, N'ROSEANI', CAST(N'2001-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (945, N'ROSELI', CAST(N'1994-04-27' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (946, N'ROSÉLIA', CAST(N'1992-04-26' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (947, N'ROSELITA', CAST(N'1994-04-19' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (948, N'ROSELY', CAST(N'1992-04-27' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (949, N'ROSEMARI', CAST(N'1999-05-13' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (950, N'ROSEMERE', CAST(N'1988-04-25' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (951, N'ROSEMERI', CAST(N'1990-05-11' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (952, N'ROSEMERY', CAST(N'1989-05-05' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (953, N'ROSERIS', CAST(N'1994-04-17' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (954, N'ROSIANI', CAST(N'1999-05-11' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (955, N'ROSICLER', CAST(N'2002-04-26' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (956, N'ROSILDA', CAST(N'1993-05-08' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (957, N'ROSIMAR', CAST(N'1998-04-20' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (958, N'ROSIMARI', CAST(N'1988-04-21' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (959, N'ROSIMBERTO', CAST(N'2005-04-26' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (960, N'ROSIMERE', CAST(N'1993-05-12' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (961, N'ROSIMERI', CAST(N'1988-04-17' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (962, N'ROSINÉIA', CAST(N'2001-04-29' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (963, N'ROSINETE', CAST(N'1988-04-20' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (964, N'ROZANE', CAST(N'1992-05-06' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (965, N'ROZI', CAST(N'1990-05-09' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (966, N'RUBENS', CAST(N'1994-05-01' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (967, N'RUBIA', CAST(N'1986-05-11' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (968, N'RÚBIA', CAST(N'1994-05-14' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (969, N'RUBIANE', CAST(N'1998-04-22' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (970, N'RUBSON', CAST(N'2001-05-05' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (971, N'RUI', CAST(N'2003-05-04' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (972, N'RUTE', CAST(N'1998-04-20' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (973, N'RUTH', CAST(N'2004-05-05' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (974, N'RUTINEIA', CAST(N'1994-05-08' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (975, N'SABRINA', CAST(N'1996-04-20' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (976, N'SAIANE', CAST(N'2001-04-22' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (977, N'SAIONARA', CAST(N'2002-05-07' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (978, N'SALATE', CAST(N'2000-06-15' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (979, N'SALETE', CAST(N'1997-04-22' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (980, N'SALEZIO', CAST(N'2001-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (981, N'SAMANTA', CAST(N'1998-04-21' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (982, N'SAMARA', CAST(N'2002-05-09' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (983, N'SAMIRA', CAST(N'2001-04-29' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (984, N'SAMUEL', CAST(N'1986-04-30' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (985, N'SANDRA', CAST(N'2005-05-06' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (986, N'SANDRELENA', CAST(N'1992-04-25' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (987, N'SANDRELI', CAST(N'2005-05-13' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (988, N'SANDRO', CAST(N'1998-04-18' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (989, N'SANTA', CAST(N'1993-05-07' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (990, N'SANTIAGO', CAST(N'2000-06-15' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (991, N'SANTINA', CAST(N'1998-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (992, N'SARA', CAST(N'1993-05-06' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (993, N'SARITA', CAST(N'1986-04-27' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (994, N'SAULO', CAST(N'1989-04-21' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (995, N'SAVIO', CAST(N'1989-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (996, N'SCHEILA', CAST(N'1998-05-11' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (997, N'SEBASTIAO', CAST(N'2002-04-25' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (998, N'SEBASTIÃO', CAST(N'1993-04-28' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (999, N'SELMAR', CAST(N'2005-05-13' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1000, N'SENIR', CAST(N'1998-05-09' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1001, N'SERGIO', CAST(N'1991-05-02' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1002, N'SÉRGIO', CAST(N'1998-05-01' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1003, N'SHEILA', CAST(N'2001-05-10' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1004, N'SHIRLEI', CAST(N'1992-05-07' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1005, N'SHIRLEY', CAST(N'1997-05-06' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1006, N'SIBELE', CAST(N'1991-04-19' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1007, N'SIBELY', CAST(N'1992-04-19' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1008, N'SIDINEI', CAST(N'2005-04-25' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1009, N'SIDNEI', CAST(N'1988-04-23' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1010, N'SIGLEA', CAST(N'2004-04-22' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1011, N'SILESIA', CAST(N'2004-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1012, N'SILVANA', CAST(N'2005-04-22' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1013, N'SILVANIA', CAST(N'1998-04-23' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1014, N'SILVIA', CAST(N'2005-04-26' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1015, N'SILVIO', CAST(N'1999-05-10' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1016, N'SIMARA', CAST(N'1991-05-03' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1017, N'SIMONE', CAST(N'1991-04-29' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1018, N'SIMONI', CAST(N'1996-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1019, N'SINARA', CAST(N'1997-04-17' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1020, N'SIRLEI', CAST(N'2003-05-13' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1021, N'SIRLEIA', CAST(N'2001-04-22' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1022, N'SOFIA', CAST(N'2004-04-17' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1023, N'SOLANGE', CAST(N'2004-05-09' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1024, N'SOLONE', CAST(N'1992-04-21' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1025, N'SONIA', CAST(N'1992-04-19' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1026, N'SÔNIA', CAST(N'2005-05-01' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1027, N'SOPHIA', CAST(N'1994-05-03' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1028, N'SORAIA', CAST(N'1994-05-02' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1029, N'SORAYA', CAST(N'1992-05-07' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1030, N'SOVENI', CAST(N'1995-05-08' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1031, N'STEFAN', CAST(N'1992-04-30' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1032, N'STEFANI', CAST(N'1992-05-02' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1033, N'STÉPHANIE', CAST(N'1992-04-30' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1034, N'STEPHANY', CAST(N'2002-05-12' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1035, N'STHÉPHANIE', CAST(N'2003-04-29' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1036, N'SUELE', CAST(N'1995-04-30' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1037, N'SUELEN', CAST(N'2001-05-08' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1038, N'SUELI', CAST(N'1989-04-18' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1039, N'SUELLEN', CAST(N'2005-05-11' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1040, N'SUNYAM', CAST(N'2005-04-17' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1041, N'SUSANA', CAST(N'2002-04-23' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1042, N'SUSANE', CAST(N'1992-04-30' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1043, N'SUSY', CAST(N'1998-04-22' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1044, N'SUZANA', CAST(N'1998-04-20' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1045, N'SUZELEI', CAST(N'1995-05-02' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1046, N'SUZETE', CAST(N'2001-05-12' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1047, N'SUZI', CAST(N'1988-04-30' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1048, N'SUZILENE', CAST(N'1991-05-12' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1049, N'TAIANE', CAST(N'1992-04-23' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1050, N'TAINÁ', CAST(N'2003-05-08' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1051, N'TAIRONE', CAST(N'2004-04-28' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1052, N'TALES', CAST(N'1989-05-08' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1053, N'TALIA', CAST(N'2003-05-07' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1054, N'TALITA', CAST(N'1986-04-22' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1055, N'TAMIRIS', CAST(N'2003-05-05' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1056, N'TAMY', CAST(N'1996-04-30' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1057, N'TAMYRES', CAST(N'2001-05-13' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1058, N'TANIA', CAST(N'2001-04-19' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1059, N'TÂNIA', CAST(N'1989-05-02' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1060, N'TASSIA', CAST(N'1986-05-06' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1061, N'TATIANA', CAST(N'1989-04-22' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1062, N'TATIANE', CAST(N'1992-04-25' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1063, N'TAURINO', CAST(N'1991-04-18' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1064, N'TAYLINE', CAST(N'1993-05-03' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1065, N'TAYNÁ', CAST(N'1994-04-27' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1066, N'TÉRCIO', CAST(N'1998-04-21' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1067, N'TERESINHA', CAST(N'1996-05-02' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1068, N'TEREZA', CAST(N'2001-05-07' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1069, N'TEREZINHA', CAST(N'1994-04-17' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1070, N'THAIS', CAST(N'1999-05-02' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1071, N'THAISA', CAST(N'1996-04-25' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1072, N'THAISE', CAST(N'2003-04-26' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1073, N'THAYANE', CAST(N'1989-05-11' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1074, N'THAYSI', CAST(N'1996-04-19' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1075, N'THÉO', CAST(N'2001-04-30' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1076, N'THIAGO', CAST(N'1997-05-05' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1077, N'THIANE', CAST(N'2005-04-17' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1078, N'THIEISE', CAST(N'1993-05-14' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1079, N'THOMAZ', CAST(N'1999-05-03' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1080, N'TIAGO', CAST(N'1997-04-20' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1081, N'TIANA', CAST(N'1988-04-24' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1082, N'TITO', CAST(N'1999-04-17' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1083, N'TOBIAS', CAST(N'2003-05-03' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1084, N'TOMAS', CAST(N'1989-04-21' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1085, N'TYCIANE', CAST(N'1999-04-28' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1086, N'VALCIR', CAST(N'1997-05-01' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1087, N'VALDA', CAST(N'2002-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1088, N'VALDECI', CAST(N'1988-05-10' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1089, N'VALDEMAR', CAST(N'1991-04-24' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1090, N'VALDEMIRA', CAST(N'1998-04-21' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1091, N'VALDETE', CAST(N'2004-04-20' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1092, N'VALDICÉIA', CAST(N'1991-05-11' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1093, N'VALDIRENE', CAST(N'1999-05-13' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1094, N'VALENTINA', CAST(N'1994-05-05' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1095, N'VALERIA', CAST(N'1994-04-19' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1096, N'VALÉRIA', CAST(N'1993-04-22' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1097, N'VALÉRIO', CAST(N'1988-04-28' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1098, N'VALMIR', CAST(N'1991-05-03' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1099, N'VALMOR', CAST(N'1998-04-22' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1100, N'VALQUIRIA', CAST(N'1990-04-27' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1101, N'VALQUÍRIA', CAST(N'1988-04-25' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1102, N'VALTAIR', CAST(N'2002-04-22' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1103, N'VANDERLEI', CAST(N'2006-05-02' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1104, N'VANDERLÉIA', CAST(N'2005-05-05' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1105, N'VANESSA', CAST(N'1987-05-02' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1106, N'VANI', CAST(N'1997-05-03' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1107, N'VANILDA', CAST(N'1989-05-05' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1108, N'VANILESSA', CAST(N'1991-05-10' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1109, N'VÂNIO', CAST(N'1992-04-19' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1110, N'VARLISE', CAST(N'1991-04-18' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1111, N'VERA', CAST(N'2004-05-11' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1112, N'VERGINIA', CAST(N'1997-05-02' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1113, N'VERONICA', CAST(N'2005-04-30' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1114, N'VICENTE', CAST(N'1994-05-12' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1115, N'VICTOR', CAST(N'2004-04-25' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1116, N'VIDAL', CAST(N'1988-04-25' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1117, N'VILMA', CAST(N'1998-05-05' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1118, N'VILMAR', CAST(N'1998-05-03' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1119, N'VILSON', CAST(N'1996-05-11' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1120, N'VINÍCIO', CAST(N'2004-05-12' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1121, N'VINÍCIOS', CAST(N'1996-05-03' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1122, N'VINICIUS', CAST(N'1996-04-19' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1123, N'VINÍCIUS', CAST(N'1993-05-14' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1124, N'VITINEI', CAST(N'1995-05-02' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1125, N'VITOR', CAST(N'2003-05-03' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1126, N'VÍTOR', CAST(N'1998-05-03' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1127, N'VITORIA', CAST(N'1999-04-19' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1128, N'VITÓRIO', CAST(N'2005-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1129, N'VIVIAN', CAST(N'1992-05-06' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1130, N'VIVIANE', CAST(N'1989-04-28' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1131, N'VOLNEI', CAST(N'1987-05-10' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1132, N'VOLNEY', CAST(N'1988-04-28' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1133, N'WAGNER', CAST(N'2001-05-03' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1134, N'WALDEMIRO', CAST(N'1995-05-01' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1135, N'WANDERLEI', CAST(N'1995-05-06' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1136, N'WANDERLEY', CAST(N'1988-05-08' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1137, N'WATUSY', CAST(N'2005-05-06' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1138, N'WELITON', CAST(N'2006-04-26' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1139, N'WESLEI', CAST(N'1996-05-13' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1140, N'WILLIAN', CAST(N'1988-05-11' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1141, N'WILSON', CAST(N'1994-05-04' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1142, N'WOIMER', CAST(N'1993-04-17' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1143, N'WUIGAND', CAST(N'1988-05-07' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1144, N'YONARA', CAST(N'1992-05-05' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1145, N'YURI', CAST(N'1998-04-29' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1146, N'ZALMIR', CAST(N'1989-05-08' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1147, N'ZELANDIA', CAST(N'1997-04-28' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1148, N'ZÉLIA', CAST(N'2002-04-24' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1149, N'ZENIR', CAST(N'1999-04-25' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1150, N'ZENITA', CAST(N'2002-04-20' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1151, N'ZIDINÉIA', CAST(N'2002-05-06' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1152, N'ZILDA', CAST(N'1997-05-07' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1153, N'ZILKAR', CAST(N'1998-04-26' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1154, N'ZILMA', CAST(N'1998-04-29' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1155, N'ZORAIDE', CAST(N'1998-05-02' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1156, N'ZULEICA', CAST(N'1998-04-19' AS Date), 0)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1157, N'ZULEIDE', CAST(N'1989-05-12' AS Date), 1)
GO
INSERT paciente (cd_paciente, nm_paciente, dt_nascimento, status) VALUES (1158, N'ZULMA', CAST(N'2006-05-03' AS Date), 1)
GO
INSERT profissional (cd_profissional, nm_profissional) VALUES (1, N'YURI')
GO
INSERT profissional (cd_profissional, nm_profissional) VALUES (2, N'IURY')
GO
INSERT profissional (cd_profissional, nm_profissional) VALUES (3, N'RAMON')
GO
INSERT profissional (cd_profissional, nm_profissional) VALUES (4, N'GLEDSON')
GO
INSERT profissional (cd_profissional, nm_profissional) VALUES (5, N'MAX')
GO
INSERT profissional (cd_profissional, nm_profissional) VALUES (6, N'RODRIGO')
GO
INSERT profissional (cd_profissional, nm_profissional) VALUES (11, N'JORGE')
GO
INSERT profissional (cd_profissional, nm_profissional) VALUES (13, N'JOEL')
GO
INSERT profissional (cd_profissional, nm_profissional) VALUES (14, N'ANDERSON')
GO
INSERT profissional (cd_profissional, nm_profissional) VALUES (15, N'LUCAS')
GO
INSERT profissional (cd_profissional, nm_profissional) VALUES (16, N'VAGNER')
GO
INSERT sinistro (cod_sinistro, placa, data_sinistro, hora_sinistro, local_sinistro, condutor) VALUES (202255501, N'ALD3834', CAST(N'2022-10-30' AS Date), CAST(N'11:00:00' AS Time), N'CRICIUMA', N'ARAUJO')
GO
INSERT sinistro (cod_sinistro, placa, data_sinistro, hora_sinistro, local_sinistro, condutor) VALUES (202255502, N'GQY6753', CAST(N'2022-11-20' AS Date), CAST(N'10:34:00' AS Time), N'ICARA', N'CARDOSO')
GO
INSERT sinistro (cod_sinistro, placa, data_sinistro, hora_sinistro, local_sinistro, condutor) VALUES (202255503, N'IAC8974', CAST(N'2022-05-24' AS Date), CAST(N'22:40:00' AS Time), N'TUBARAO', N'CUNHA')
GO
INSERT sinistro (cod_sinistro, placa, data_sinistro, hora_sinistro, local_sinistro, condutor) VALUES (202255504, N'LVX7086', CAST(N'2023-01-25' AS Date), CAST(N'07:37:00' AS Time), N'URUSSANGA', N'SILVA')
GO
INSERT sinistro (cod_sinistro, placa, data_sinistro, hora_sinistro, local_sinistro, condutor) VALUES (202255505, N'MZT1826', CAST(N'2024-03-27' AS Date), CAST(N'15:40:00' AS Time), N'SIDEROPOLIS', N'LUIZ')
GO
INSERT sinistro (cod_sinistro, placa, data_sinistro, hora_sinistro, local_sinistro, condutor) VALUES (202255506, N'MZT1826', CAST(N'2023-10-20' AS Date), CAST(N'16:00:00' AS Time), N'FLORIANOPOLIS', N'JOAO')
GO
INSERT sinistro (cod_sinistro, placa, data_sinistro, hora_sinistro, local_sinistro, condutor) VALUES (202255507, N'MZT1826', CAST(N'2022-05-08' AS Date), CAST(N'18:00:00' AS Time), N'NOVA VENEZA', N'LUCAS')
GO
INSERT sinistro (cod_sinistro, placa, data_sinistro, hora_sinistro, local_sinistro, condutor) VALUES (202255508, N'IAC8974', CAST(N'2022-08-08' AS Date), CAST(N'21:00:00' AS Time), N'CRICIUMA', N'PEDRO')
GO


ALTER TABLE agenda  WITH CHECK ADD  CONSTRAINT fk_paciente__agenda FOREIGN KEY(cd_paciente)
REFERENCES paciente (cd_paciente)
GO
ALTER TABLE agenda CHECK CONSTRAINT fk_paciente__agenda
GO
ALTER TABLE agenda  WITH CHECK ADD  CONSTRAINT fk_profissional__agenda FOREIGN KEY(cd_profissional)
REFERENCES profissional (cd_profissional)
GO
ALTER TABLE agenda CHECK CONSTRAINT fk_profissional__agenda
GO
ALTER TABLE aluno  WITH CHECK ADD  CONSTRAINT fk_curso__aluno FOREIGN KEY(cd_curso)
REFERENCES curso (cd_curso)
GO
ALTER TABLE aluno CHECK CONSTRAINT fk_curso__aluno
GO
ALTER TABLE apolice  WITH CHECK ADD  CONSTRAINT fk_carro__apolice FOREIGN KEY(placa)
REFERENCES carro (placa)
GO
ALTER TABLE apolice CHECK CONSTRAINT fk_carro__apolice
GO
ALTER TABLE apolice  WITH CHECK ADD  CONSTRAINT fk_cliente__apolice FOREIGN KEY(cod_cliente)
REFERENCES cliente (cod_cliente)
GO
ALTER TABLE apolice CHECK CONSTRAINT fk_cliente__apolice
GO
ALTER TABLE sinistro  WITH CHECK ADD  CONSTRAINT fk_carro__sinistro FOREIGN KEY(placa)
REFERENCES carro (placa)
GO
ALTER TABLE sinistro CHECK CONSTRAINT fk_carro__sinistro
GO
