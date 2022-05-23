# Questão 5

## (A 
* Um valor nulo é um valor desconhecido ou que não existe, como ele não é uma cadeia de caracteres nem do tipo numérico, quando é feita alguma consulta utilizando o where por exemplo, o resultado pode ser inconsistente.


## B)
* Em um LEFT JOIN, os resultados da tabela da esquerda são somados ao resultado da interseção das duas tabelas, enquanto em um RIGHT JOIN, os valores da tabela da direita são somados ao resultado da interseção das duas tabelas.


## C)
* Em um FULL OUTER JOIN ocorre a busca na tabela A resultados que não possuem interseção, busca na tabela B resultados que não possuem interseção, e por fim busca os resultados da interseção. Como no MySQL não há uma query para o FULL OUTER JOIN é necessário unir os dois recursos com o UNION.

Exemplo
```
SELECT *
FROM `tabela_a`
LEFT OUTER JOIN `tabela_b` ON `tabela_a`.`id` = `tabela_b`.`id`

UNION

SELECT *
FROM `tabela_a`
RIGHT OUTER JOIN `tabela_b` ON `tabela_a`.`id` = `tabela_b`.`id`;
```
Código acima foi retirato do seguinte site: https://www.horadecodar.com.br/2021/06/30/como-fazer-um-full-outer-join-em-mysql/

