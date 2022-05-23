
/*Criando a View*/
CREATE view total_funciONarios_por_departameono SELECT d.descricao nome_departamento, count(*) total_funciONarios_por_departameono
FROM funciONario f 
INNER JOIN departamento d 
ON f.cod_depto = d.codigo GROUP BY d.codigo ORDER BY d.codigo ASC;

/*Consultas*/
SELECT f.nome gerente, d.descricao nome_departamento, CAST(NULL AS BIGINT) total_funcionarios_por_departameono
FROM funciONario f RIGHT JOIN departamento d ON f.cod_depto = d.codigo
WHERE f.codigo IN (SELECT d.cod_gerente 
                    FROM departamento d, funciONario f 
                    WHERE f.cod_depto = d.codigo AND d.cod_gerente = f.codigo)
UNION

SELECT f.nome gerente, d.descricao nome_departamento, CAST(NULL AS BIGINT) total_funcionarios_por_departameono
FROM funciONario f RIGHT JOIN departamento d ON f.cod_depto = d.codigo
WHERE d.codigo NOT IN (SELECT f.cod_depto 
                        FROM funciONario f, departamento d 
                        WHERE f.cod_depto = d.codigo AND d.cod_gerente = f.codigo)
UNION

SELECT NULL coluna_auxiliar, nome_departamento, total_funcionarios_por_departamento 
FROM total_funcionarios_por_departamento;