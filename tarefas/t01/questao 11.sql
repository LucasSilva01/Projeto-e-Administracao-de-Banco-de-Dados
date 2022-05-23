SELECT p.nome nome_projeto, d.descricao nome_departamento, f.nome nome_funcionario
FROM projeto p, departamento d, funcionario f
WHERE p.cod_responsavel = f.codigo AND p.cod_depto = d.codigo AND p.codigo IN (SELECT p.codigo 
                                                                                FROM funcionario f, projeto p, departamento d 
                                                                                WHERE f.codigo = p.cod_responsavel AND p.cod_depto = d.codigo AND p.cod_depto <> f.cod_depto);
