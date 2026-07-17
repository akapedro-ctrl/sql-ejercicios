--¿Cuál es el producto más vendido (en unidades)?

WITH unidades AS

(SELECT d.producto_id, SUM(d.cantidad) AS cantidad_unidades_vendidas, k.nombre  
FROM detalle_pedidos d
JOIN productos k
ON k.id = d.producto_id
GROUP BY d.producto_id, k.nombre)

SELECT nombre, cantidad_unidades_vendidas
FROM unidades 
WHERE cantidad_unidades_vendidas =
(SELECT MAX (cantidad_unidades_vendidas)
FROM unidades)