--4. ¿Hay productos que nunca fueron vendidos?

SELECT k.nombre AS producto_no_vendido
FROM productos k
LEFT JOIN detalle_pedidos d  
ON d.producto_id = k.id
WHERE d.pedido_id IS NULL
