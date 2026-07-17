--¿Qué cliente compró la mayor variedad de productos?

WITH variedad_clientes AS 

(SELECT c.nombre, COUNT (DISTINCT k.nombre) AS variedad_productos 
FROM clientes c 
JOIN pedidos p 
ON c.id = p.cliente_id
JOIN detalle_pedidos d
ON p.id = d.pedido_id
JOIN productos k
ON d.producto_id = k.id
GROUP BY c.nombre)

SELECT nombre, variedad_productos
FROM variedad_clientes 
WHERE variedad_productos =
(SELECT MAX(variedad_productos)
FROM variedad_clientes)
