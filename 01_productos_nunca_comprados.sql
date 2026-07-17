--¿Qué productos nunca fueron comprados?
SELECT k.nombre, d.pedido_id
FROM productos k 
LEFT JOIN detalle_pedidos d
ON k.id = d.producto_id
WHERE d.producto_id IS NULL 
