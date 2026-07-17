--Ticket promedio por cliente

WITH promedio_cliente AS

(SELECT c.nombre, SUM(d.cantidad * k.precio) AS gasto_por_cliente
FROM clientes c
JOIN pedidos p
ON p.cliente_id = c.id
JOIN detalle_pedidos d
ON p.id = d.pedido_id
JOIN productos k
ON d.producto_id = k.id
GROUP BY c.id, c.nombre)

SELECT  AVG(gasto_por_cliente) AS promedio_cliente 
FROM promedio_cliente



