--¿Quién compró la mayor variedad de productos?

WITH variedad AS

(SELECT c.id, c.nombre, COUNT (DISTINCT d.producto_id) AS variedad_productos  
FROM clientes c
JOIN pedidos p 
ON c.id = p.cliente_id
JOIN detalle_pedidos d
ON p.id = d.pedido_id
JOIN productos k 
ON d.producto_id = k.id 
GROUP BY c.id, c.nombre)

SELECT nombre, variedad_productos
FROM variedad 
WHERE variedad_productos = 
(SELECT MAX(variedad_productos)
FROM  variedad)