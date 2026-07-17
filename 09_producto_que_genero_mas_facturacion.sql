--¿Qué producto generó más facturación?

WITH unidades AS 
(SELECT d.producto_id, SUM(d.cantidad * k.precio) AS facturacion_total, k.nombre 
FROM detalle_pedidos d 
JOIN productos k 
ON k.id = d.producto_id 
GROUP BY d.producto_id, k.nombre) 

SELECT nombre, facturacion_total
FROM unidades 
WHERE facturacion_total = 
(SELECT MAX (facturacion_total) 
FROM unidades)