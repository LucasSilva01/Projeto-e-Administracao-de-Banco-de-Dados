INSERT INTO public.funcionario(
	codigo, nome, sexo, dt_nasc, salario)
	VALUES (1, 'Lucas da Silva Santos', 'M', '1972-05-15', 1543.5);

INSERT INTO public.departamento(
	descricao, cod_gerente)
	VALUES ('Departmaneto de Finanças', 1);
	
INSERT INTO public.funcionario(
	nome, sexo, dt_nasc, salario) 
    VALUES('Oracio Silva', 'M', '1999-09-10', 2856.8);

INSERT INTO public.departamento(
	descricao, cod_gerente)
	VALUES ('Departmaneto de TI', 2);
	
INSERT INTO public.funcionario(
	nome, sexo, dt_nasc, salario) 
    VALUES('Railma Suzana', 'F', '1982-06-09', 1789.9);

INSERT INTO public.departamento(
	descricao, cod_gerente)
	VALUES ('Departmaneto de Feminista', 3);

INSERT INTO public.funcionario(
	nome, sexo, dt_nasc, salario) 
    VALUES('Alexandre o Grande', 'M', '1900-05-19', 50239.1);

	
INSERT INTO public.departamento(
	descricao, cod_gerente)
	VALUES ('Departmaneto de Agrícola', 4);
	
INSERT INTO public.departamento(
	descricao)
	VALUES ('Departmaneto de Fantasma');

INSERT INTO public.funcionario(
	nome, sexo, dt_nasc, salario, cod_depto) 
    VALUES('Maria Dalva', 'F', '1972-08-11', 8953.6, 3);
	
INSERT INTO public.funcionario(
	nome, sexo, dt_nasc, salario, cod_depto) 
    VALUES('Paulinha Caldeirão', 'F', '2000-06-08', 5462.2, 3);

INSERT INTO public.departamento(
	descricao, cod_gerente)
	VALUES ('Departmaneto de Limpeza', 5);

INSERT INTO public.funcionario(
	nome, sexo, dt_nasc, salario, cod_depto) 
    VALUES('Tania Silva', 'F', '2001-07-09', 4462.2, 5);


INSERT INTO public.funcionario(
	nome, sexo, dt_nasc, salario, cod_depto) 
    VALUES('João Maria', 'M', '2001-08-10', 3462.2, 5);

INSERT INTO public.funcionario(
	nome, sexo, dt_nasc, salario, cod_depto) 
    VALUES('Paulo', 'M', '2000-08-10', 4462.2, 5);

INSERT INTO public.projeto(
	nome, descricao, cod_depto, cod_responsavel, data_inicio) 
    VALUES('Projeto X', 'Secreto', 1, 1, '2023-08-10');

INSERT INTO public.projeto(
	nome, descricao, cod_depto, cod_responsavel, data_inicio) 
    VALUES('Projeto Z', 'Secreto', 2, 2, '2023-08-10');


INSERT INTO public.projeto(
	nome, descricao, cod_depto, cod_responsavel, data_inicio) 
    VALUES('Projeto y', 'Secreto', 4, 5, '2025-08-10');

INSERT INTO public.atividade(
	nome, descricao, cod_responsavel, data_inicio) 
    VALUES('Atividade Segundaria', 'Começando', 4, '2025-09-11');

INSERT INTO public.atividade(
	nome, descricao, cod_responsavel, data_inicio) 
    VALUES('Atividade WEV', 'Começando', 2, '2022-09-11');

INSERT INTO public.atividade_projeto(cod_projeto, cod_atividade) 
	VALUES(1, 1);

INSERT INTO public.atividade_projeto(cod_projeto, cod_atividade) 
	VALUES(2, 2);
