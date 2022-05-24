CREATE TABLE cliente (
	codigo SERIAL PRIMARY KEY,
	nome VARCHAR(150),
	endereco VARCHAR(300)
);

CREATE TABLE piloto (
	codigo SERIAL PRIMARY KEY,
	nome VARCHAR(150),
	num_voos INT
);

CREATE TABLE voo (
	codigo SERIAL PRIMARY KEY,
	tipo VARCHAR(10),
	piloto INT,
	num_passageiros INT,
	distancia FLOAT,
	FOREIGN KEY (piloto) REFERENCES piloto(codigo)
);

CREATE TABLE milhas (
	cliente INT PRIMARY KEY,
	quantidade INT,
	FOREIGN KEY (cliente) REFERENCES cliente(codigo)
);

CREATE TABLE cliente_voo (
	cliente INT,
	voo INT,
	classe VARCHAR(15),
	PRIMARY KEY(cliente, voo),
	FOREIGN KEY (cliente) REFERENCES cliente(codigo),
	FOREIGN KEY (voo) REFERENCES voo(codigo)
);