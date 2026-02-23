#Ticket medio por pedido
SELECT AVG(valor_do_pedido) AS ticket_medio
FROM (
    SELECT ve.order_id, SUM(qty * preco) AS valor_do_pedido
    FROM produtos pr
    JOIN vendas ve
        ON pr.codigo = ve.codigo
    GROUP BY ve.order_id
) AS pedidos;