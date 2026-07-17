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
| `01_productos_nunca_comprados.sql` | ¿Qué productos nunca fueron comprados? |
| `02_clientes_gasto_mayor_promedio.sql` | Clientes cuyo gasto total supera el promedio general |
| `03_cliente_que_mas_gasto.sql` | Cliente que más gastó |
| `04_top3_clientes_que_mas_gastaron.sql` | Los 3 clientes que más gastaron |
| `05_cliente_mayor_variedad_productos.sql` | Cliente que compró mayor variedad de productos |
| `06_porcentaje_clientes_con_compras.sql` | Porcentaje de clientes que compró al menos una vez |
| `07_quien_compro_mayor_variedad.sql` | Quién compró la mayor variedad de productos (variante) |
| `08_producto_mas_vendido_unidades.sql` | Producto más vendido en unidades |
| `09_producto_que_genero_mas_facturacion.sql` | Producto que generó más facturación |
| `10_productos_nunca_vendidos.sql` | Productos que nunca fueron vendidos (variante) |
| `11_cantidad_productos_distintos_vendidos.sql` | Cantidad de productos distintos vendidos |
| `12_facturacion_total_empresa.sql` | Monto total facturado por la empresa |
| `13_valor_promedio_pedido.sql` | Valor promedio de un pedido |
| `14_pedido_mas_caro.sql` | Pedido más caro |
| `15_ticket_promedio_por_cliente.sql` | Ticket promedio por cliente |
| `16_cliente_que_compro_producto_mas_caro.sql` | Cliente que compró el producto más caro |
| `17_categorizacion_clientes_case_when.sql` | Categorización de clientes con CASE WHEN (ocasional/frecuente/VIP) |

## Herramientas / conceptos utilizados

- JOINs (INNER, LEFT)
- CTEs (`WITH`)
- Funciones de agregación (`SUM`, `COUNT`, `AVG`, `MAX`)
- Subconsultas
- `GROUP BY` / `HAVING`
- `CASE WHEN`
