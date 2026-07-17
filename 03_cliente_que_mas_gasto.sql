--Mostrar el cliente que más gastó.
WITH gasto_cliente AS 

(SELECT c.nombre, SUM (k.precio * d.cantidad) AS gasto_cliente 
FROM clientes c
JOIN pedidos p
ON c.id = p.cliente_id
JOIN detalle_pedidos d
ON p.id = d.pedido_id
JOIN productos k
ON d.producto_id = k.id
GROUP BY c.nombre)
SELECT gasto_cliente, nombre
FROM gasto_cliente 
WHERE gasto_cliente = 
(SELECT MAX(gasto_cliente)
FROM gasto_cliente)