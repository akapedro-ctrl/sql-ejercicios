--Mostrar los 3 clientes que más gastaron.
WITH gasto_total AS

(SELECT c.nombre, SUM(k.precio * d.cantidad) AS gasto_total
FROM clientes c
JOIN pedidos p 
ON c.id = p.cliente_id
JOIN detalle_pedidos d
ON p.id = d.pedido_id
JOIN productos k 
ON d.producto_id = k.id
GROUP BY c.nombre)
SELECT nombre, gasto_total
FROM gasto_total
ORDER BY gasto_total DESC 
LIMIT 3 

