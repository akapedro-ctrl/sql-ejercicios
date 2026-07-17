--CASE WHEN

WITH gasto_total_ok AS 

(SELECT c.nombre, c.id, SUM(k.precio * d.cantidad) AS gasto
FROM clientes c
JOIN pedidos p
ON p.cliente_id = c.id	
JOIN detalle_pedidos d
ON p.id = d.pedido_id
JOIN productos k
ON k.id = d.producto_id
GROUP BY c.id)

SELECT nombre, gasto AS OK,
CASE
WHEN gasto < 500 THEN "cliente ocasional"
WHEN gasto BETWEEN  500 AND 1500 THEN "cliente frecuente"
ELSE "cliente VIP"
END AS categoria_precio
FROM gasto_total_ok