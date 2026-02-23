#Produtos mais vendidos
SELECT pr.produto, Sum(qty) as unidades_vendidas
FROM vendas ve
JOIN produtos pr
ON pr.codigo = ve.codigo
GROUP BY pr.produto
ORDER BY unidades_vendidas DESC
