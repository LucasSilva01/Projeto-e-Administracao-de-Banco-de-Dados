SELECT f.nome 
FROM funcionario f, departamento d
WHERE (f.salario > (SELECT max(salario) 
                    FROM funcionario, departamento 
                    WHERE cod_depto = 5 AND funcionario.cod_depto = departamento.codigo)) AND f.cod_depto = d.codigo;