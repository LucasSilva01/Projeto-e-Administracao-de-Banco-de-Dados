/*NÃO tENHO CERTEZA SE ESTÁ CORRETO*/
SELECT p.nome nome_projeto, p.data_inicio data_inicio_projeto, p.data_fim data_fim_projeto, a.nome nome_atividade, a.data_inicio data_inicio_atividade, a.data_fim data_fim_atividade
FROM projeto p, atividade a, atividade_projeto ap
WHERE p.codigo = ap.cod_projeto AND a.codigo = ap.cod_atividade AND a.data_inicio < p.data_fim;