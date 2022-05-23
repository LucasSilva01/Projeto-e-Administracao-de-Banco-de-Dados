
SELECT f.nome, f.dt_nasc
FROM funcionario f, departamento d
WHERE f.cod_depto = d.codigo AND f.codigo not in (SELECT d.cod_gerente 
                                                    FROM departamento d, funcionario f 
                                                    WHERE f.cod_depto = d.codigo AND d.cod_gerente = f.codigo) AND f.codigo in (SELECT codigo FROM funcionario 
                                                                                                                                WHERE dt_nasc < (current_date - '21 years'::interval)::date);
