--¿Cuántos productos distintos fueron vendidos?

SELECT COUNT(DISTINCT k.id) AS productos_distintos_vendidos 
FROM productos k
JOIN detalle_pedidos d
ON d.producto_id = k.id


 

