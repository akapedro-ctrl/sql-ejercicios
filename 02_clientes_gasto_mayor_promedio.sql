--Mostrar los clientes cuyo gasto total
-- es mayor que el gasto promedio de todos los clientes.
--WITH	
WITH gasto_clientes AS
(SELECT c.nombre, SUM(k.precio * d.cantidad) AS gasto_total
FROM clientes c 
JOIN pedidos p
ON p.cliente_id = c.id 
JOIN detalle_pedidos d
ON d.pedido_id = p.id 
JOIN productos k 
ON k.id = d.producto_id
GROUP BY c.nombre)
SELECT gasto_total, nombre  
FROM gasto_clientes 
WHERE gasto_total >
(SELECT AVG(gasto_total)
FROM gasto_clientes)