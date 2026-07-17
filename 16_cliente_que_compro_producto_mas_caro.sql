--¿Qué cliente compró el producto más caro?

WITH cliente_producto_mayor_valor AS

(SELECT c.nombre AS nombre_cliente, k.nombre AS nombre_producto, k.precio
FROM clientes c
JOIN pedidos p
ON c.id = p.cliente_id
JOIN detalle_pedidos d
ON p.id = d.pedido_id
JOIN productos k 
ON d.producto_id = k.id)

SELECT nombre_cliente AS cliente_mayor_producto
FROM cliente_producto_mayor_valor 
WHERE precio =
(SELECT MAX(precio)
FROM cliente_producto_mayor_valor)

