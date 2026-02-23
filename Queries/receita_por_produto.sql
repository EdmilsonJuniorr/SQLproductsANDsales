# Receita total por produtos
SELECT pr.produto, Sum(qty*preco) as receita_total
FROM vendas ve
JOIN produtos pr
ON pr.codigo = ve.codigo
GROUP BY pr.produto
ORDER BY receita_total DESC
LIMIT 10