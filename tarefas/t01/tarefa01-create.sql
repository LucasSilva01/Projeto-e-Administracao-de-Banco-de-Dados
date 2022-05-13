DROP TABLE IF EXISTS funcionario cascade;
DROP TABLE IF EXISTS departamento cascade;
DROP TABLE IF EXISTS projeto cascade;
DROP TABLE IF EXISTS atividade cascade;
DROP TABLE IF EXISTS atividade_projeto cascade;

CREATE TABLE funcionario
(
	codigo SERIAL PRIMARY KEY,
	nome VARCHAR(150),
	sexo CHAR(1),
	dt_nasc DATE,
	salario DECIMAL(10, 2),
	cod_depto INT
);

CREATE TABLE departamento
(
	codigo SERIAL PRIMARY KEY,
	descricao VARCHAR(300),
	cod_gerente INT
);

CREATE TABLE projeto
(
	codigo SERIAL PRIMARY KEY,
	nome VARCHAR(150),
	descricao VARCHAR(300),
	cod_depto INT,
	cod_respONsavel INT,
	data_inicio DATE,
	data_fim DATE DEFAULT NULL
);

CREATE TABLE atividade
(
	codigo SERIAL PRIMARY KEY,
	nome VARCHAR(150),
	descricao VARCHAR(300),
	cod_respONsavel INT,
	data_inicio DATE,
	data_fim DATE DEFAULT NULL
);

CREATE TABLE atividade_projeto
(
	cod_projeto INT,
	cod_atividade INT,
	CONSTRAINT pk_atividade_projeto PRIMARY KEY(cod_projeto, cod_atividade)
);


ALTER TABLE funcionario ADD FOREIGN key(cod_depto) REFERENCES departamento(codigo) ON UPDATE cascade ON DELETE restrict;

ALTER TABLE departamento ADD FOREIGN key(cod_gerente) REFERENCES funcionario(codigo) ON UPDATE cascade ON DELETE restrict;

ALTER TABLE projeto ADD FOREIGN key(cod_depto) REFERENCES departamento(codigo) ON UPDATE cascade ON DELETE restrict;
ALTER TABLE projeto ADD FOREIGN key(cod_responsavel) REFERENCES funcionario(codigo) ON UPDATE cascade ON DELETE set null;

ALTER TABLE atividade ADD FOREIGN key(cod_responsavel) REFERENCES funcionario(codigo) ON UPDATE cascade  ON DELETE set null;

ALTER TABLE atividade_projeto ADD FOREIGN key(cod_projeto) REFERENCES projeto(codigo) ON UPDATE cascade ON DELETE set null;
ALTER TABLE atividade_projeto ADD FOREIGN key(cod_atividade) REFERENCES atividade(codigo) ON UPDATE cascade ON DELETE set null;