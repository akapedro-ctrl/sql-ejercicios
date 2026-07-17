--¿Qué porcentaje de clientes compró al menos una vez?

WITH porcentaje_clientes AS 

(SELECT c.id, c.nombre, COUNT (p.id) AS cantidad_pedidos 
FROM clientes c 
LEFT JOIN pedidos p 
ON p.cliente_id = c.id
GROUP BY c.id, c.nombre)

SELECT ROUND 
( COUNT (cantidad_pedidos) * 100.0 /
(SELECT COUNT (*)
FROM porcentaje_clientes
),2
) AS porcentaje_clientes_compras
FROM porcentaje_clientes 
WHERE cantidad_pedidos > 0 
