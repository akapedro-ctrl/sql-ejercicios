# SQL - Ejercicios de práctica

Ejercicios de SQL resueltos sobre una base de datos de **clientes, pedidos, productos y detalle de pedidos**, mientras voy armando mi perfil orientado a análisis de datos.

Vengo del área de sociología, trabajando actualmente en el sector público, y estoy aprendiendo SQL y Python (pandas) para reorientar mi perfil profesional hacia el análisis de datos.

## Estructura de la base de datos

- `clientes` — datos de clientes
- `productos` — catálogo de productos con precio
- `pedidos` — pedidos realizados por cada cliente
- `detalle_pedidos` — detalle de productos y cantidades por pedido

## Ejercicios

| Archivo | Consigna |
|---|---|
| `04_productos_nunca_comprados.sql` | ¿Qué productos nunca fueron comprados? |
| `05_clientes_gasto_mayor_promedio.sql` | Clientes cuyo gasto total supera el promedio general |
| `06_cliente_que_mas_gasto.sql` | Cliente que más gastó |
| `07_top3_clientes_que_mas_gastaron.sql` | Los 3 clientes que más gastaron |
| `08_cliente_mayor_variedad_productos.sql` | Cliente que compró mayor variedad de productos |
| `09_porcentaje_clientes_con_compras.sql` | Porcentaje de clientes que compró al menos una vez |
| `10_quien_compro_mayor_variedad.sql` | Quién compró la mayor variedad de productos (variante) |
| `11_producto_mas_vendido_unidades.sql` | Producto más vendido en unidades |
| `12_producto_que_genero_mas_facturacion.sql` | Producto que generó más facturación |
| `13_productos_nunca_vendidos.sql` | Productos que nunca fueron vendidos (variante) |
| `15_cantidad_productos_distintos_vendidos.sql` | Cantidad de productos distintos vendidos |
| `16_facturacion_total_empresa.sql` | Monto total facturado por la empresa |
| `17_valor_promedio_pedido.sql` | Valor promedio de un pedido |
| `18_pedido_mas_caro.sql` | Pedido más caro |
| `19_ticket_promedio_por_cliente.sql` | Ticket promedio por cliente |
| `20_cliente_que_compro_producto_mas_caro.sql` | Cliente que compró el producto más caro |
| `21_categorizacion_clientes_case_when.sql` | Categorización de clientes con CASE WHEN (ocasional/frecuente/VIP) |

## Herramientas / conceptos utilizados

- JOINs (INNER, LEFT)
- CTEs (`WITH`)
- Funciones de agregación (`SUM`, `COUNT`, `AVG`, `MAX`)
- Subconsultas
- `GROUP BY` / `HAVING`
- `CASE WHEN`
