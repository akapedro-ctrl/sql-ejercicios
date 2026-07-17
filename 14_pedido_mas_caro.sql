--¿Cuál fue el pedido más caro?

WITH promedio_pedido AS

(SELECT  
SUM(k.precio * d.cantidad) AS importe_por_pedido, 
d.pedido_id AS pedido_id
FROM productos k 
JOIN detalle_pedidos d
ON k.id = d.producto_id
GROUP BY d.	pedido_id)

SELECT pedido_id, importe_por_pedido AS valor_maximo_pedido
FROM promedio_pedido
WHERE importe_por_pedido = 
(SELECT MAX(importe_por_pedido)
FROM promedio_pedido)