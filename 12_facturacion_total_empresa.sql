--¿Cuál fue el monto total facturado por la empresa?

SELECT SUM (k.precio * d.cantidad) AS  facturacion_total
FROM productos k 
JOIN detalle_pedidos d
ON k.id = d.producto_id