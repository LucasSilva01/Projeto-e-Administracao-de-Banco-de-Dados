
CREATE view quantidade_atividades_por_projeto 
AS SELECT p.nome nome_projeto, count(*) AS quantidade_atividades_por_projeto 
FROM atividade_projeto ap, atividade a, projeto p 
WHERE ap.cod_atividade = a.codigo AND ap.cod_projeto = p.codigo 
GROUP BY p.codigo 
ORDER BY p.codigo; 

CREATE view quantidade_responsaveis_por_atividade 
AS SELECT a.nome  nome_atividade, count(*)  quantidade_responsaveis_por_atividade 
FROM atividade a, atividade_projeto ap, projeto p, funcionario f 
WHERE a.cod_responsavel = f.codigo AND a.codigo = ap.cod_atividade AND ap.cod_projeto = p.codigo
GROUP BY a.codigo 
ORDER BY a.codigo;

SELECT p.nome nome_projeto, f.nome funcionario_responsavel, qapp.quantidade_atividades_por_projeto, qrpa.quantidade_responsaveis_por_atividade 
FROM projeto p, funcionario f, atividade a, atividade_projeto ap, quantidade_atividades_por_projeto qapp, quantidade_responsaveis_por_atividade qrpa
WHERE p.cod_responsavel = f.codigo AND p.codigo = ap.cod_projeto AND a.codigo = ap.cod_atividade 
GROUP BY p.nome, f.nome, qapp.quantidade_atividades_por_projeto, qrpa.quantidade_responsaveis_por_atividade;
