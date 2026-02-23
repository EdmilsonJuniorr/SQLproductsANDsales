#Receita por país
SELECT ve.ship_country, Sum(qty*preco) as receita_por_pais
FROM produtos pr
JOIN vendas ve 
ON pr.codigo = ve.codigo
GROUP BY ve.ship_country
ORDER BY receita_por_pais DESC