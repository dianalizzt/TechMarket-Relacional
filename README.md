# TechMarket Relacional

 Tarea de Bases de Datos para practicar álgebra relacional, cálculo relacional de tuplas, cálculo relacional de dominios y SQL sobre una tienda en línea.

## Dominio
La tienda administra clientes, productos, proveedores, pedidos, detalles de pedido, pagos, envíos, reseñas y categorías.

## Modelo relacional
CLIENTE(id_cliente PK, nombre, email, ciudad, fecha_registro, tipo)
PRODUCTO(id_producto PK, nombre, categoria, precio, stock, id_proveedor FK)
PROVEEDOR(id_proveedor PK, nombre, especialidad, ciudad, email)
PEDIDO(id_pedido PK, id_cliente FK, fecha, estado, total)
DETALLE_PEDIDO(id_detalle PK, id_pedido FK, id_producto FK, cantidad, precio_unitario)
PAGO(id_pago PK, id_pedido FK, metodo, estado_pago, monto)
ENVIO(id_envio PK, id_pedido FK, paqueteria, estado_envio, fecha_entrega)
RESENA(id_resena PK, id_cliente FK, id_producto FK, calificacion, comentario)
CATEGORIA(id_categoria PK, nombre, descripcion)

## Instalación
1. Crear la base de datos.
2. Ejecutar `schema.sql`.
3. Ejecutar `data.sql`.
4. Ejecutar las consultas en `queries.sql` o desde el menú interactivo.

## Contenido
- `/sql/schema.sql`: definición de tablas.
- `/sql/data.sql`: datos de prueba.
- `/sql/queries.sql`: 20 consultas complejas.
- `/docs`: expresiones en AR, CRT, CRD y SQL.

