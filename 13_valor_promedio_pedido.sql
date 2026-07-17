--¿Cuál fue el valor promedio de un pedido?

WITH promedio_pedido AS

(SELECT  
SUM(k.precio * d.cantidad) AS importe_por_pedido, 
d.pedido_id AS pedido
FROM productos k 
JOIN detalle_pedidos d
ON k.id = d.producto_id
GROUP BY d.	pedido_id)

SELECT AVG(importe_por_pedido) AS valor_promedio_pedido
FROM promedio_pedido

