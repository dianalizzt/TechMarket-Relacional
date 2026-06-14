-- ====================================================
-- CONSULTAS COMPLEJAS DEL CASO INTEGRADOR
-- ====================================================

-- 1. Productos de Accesorios con stock mayor a 20
SELECT id_producto, nombre, precio, stock
FROM PRODUCTO
WHERE categoria = 'Accesorios'
  AND stock > 20;


-- 2. Clientes Premium o clientes de Puebla
SELECT id_cliente, nombre, ciudad, tipo
FROM CLIENTE
WHERE tipo = 'Premium'
UNION
SELECT id_cliente, nombre, ciudad, tipo
FROM CLIENTE
WHERE ciudad = 'Puebla';


-- 3. Categorías de productos que también son especialidad de proveedores
SELECT DISTINCT categoria
FROM PRODUCTO
INTERSECT
SELECT DISTINCT especialidad
FROM PROVEEDOR;


-- 4. Productos que no han sido vendidos
SELECT p.id_producto, p.nombre
FROM PRODUCTO p
WHERE NOT EXISTS (
    SELECT 1
    FROM DETALLE_PEDIDO d
    WHERE d.id_producto = p.id_producto
);


-- 5. Pedidos pagados entre 1000 y 5000 pesos
SELECT id_pedido, id_cliente, estado, total
FROM PEDIDO
WHERE estado = 'Pagado'
  AND total BETWEEN 1000 AND 5000;


-- 6. Pedidos con nombre del cliente
SELECT c.nombre, o.id_pedido, o.fecha, o.estado, o.total
FROM CLIENTE c
JOIN PEDIDO o
  ON c.id_cliente = o.id_cliente;


-- 7. Productos cuyo precio supera el total de algún pedido
SELECT p.id_producto, p.nombre, p.precio, o.id_pedido, o.total
FROM PRODUCTO p
JOIN PEDIDO o
  ON p.precio > o.total;


-- 8. Pedidos con información de envío
SELECT o.id_pedido, o.estado, o.total,
       e.paqueteria, e.estado_envio, e.fecha_entrega
FROM PEDIDO o
LEFT JOIN ENVIO e
  ON o.id_pedido = e.id_pedido;


-- 9. Clientes con al menos un pago aprobado
SELECT DISTINCT c.id_cliente, c.nombre
FROM CLIENTE c
WHERE EXISTS (
    SELECT 1
    FROM PEDIDO o
    JOIN PAGO g
      ON g.id_pedido = o.id_pedido
    WHERE o.id_cliente = c.id_cliente
      AND g.estado_pago = 'Aprobado'
);


-- 10. Proveedores sin productos vendidos
SELECT a.id_proveedor, a.nombre
FROM PROVEEDOR a
WHERE NOT EXISTS (
    SELECT 1
    FROM PRODUCTO p
    JOIN DETALLE_PEDIDO d
      ON d.id_producto = p.id_producto
    WHERE p.id_proveedor = a.id_proveedor
);


-- 11. Cantidad de pedidos por cliente
SELECT c.id_cliente, c.nombre, COUNT(o.id_pedido) AS total_pedidos
FROM CLIENTE c
JOIN PEDIDO o
  ON c.id_cliente = o.id_cliente
GROUP BY c.id_cliente, c.nombre;


-- 12. Total vendido por estado, solo Pagado o Enviado
SELECT estado, SUM(total) AS total_vendido
FROM PEDIDO
WHERE estado IN ('Pagado', 'Enviado')
GROUP BY estado;


-- 13. Categorías con precio promedio mayor a 1000
SELECT categoria, AVG(precio) AS precio_promedio
FROM PRODUCTO
GROUP BY categoria
HAVING AVG(precio) > 1000;


-- 14. Precio máximo y mínimo por categoría
SELECT categoria,
       MAX(precio) AS precio_maximo,
       MIN(precio) AS precio_minimo
FROM PRODUCTO
GROUP BY categoria;


-- 15. Total vendido por proveedor
SELECT a.id_proveedor,
       a.nombre,
       SUM(d.cantidad * d.precio_unitario) AS total_vendido
FROM PROVEEDOR a
JOIN PRODUCTO p
  ON p.id_proveedor = a.id_proveedor
JOIN DETALLE_PEDIDO d
  ON d.id_producto = p.id_producto
GROUP BY a.id_proveedor, a.nombre;


-- 16. Clientes que compraron todos los accesorios vendidos
SELECT c.id_cliente, c.nombre
FROM CLIENTE c
WHERE NOT EXISTS (
    SELECT 1
    FROM PRODUCTO p
    WHERE p.categoria = 'Accesorios'
      AND EXISTS (
          SELECT 1
          FROM DETALLE_PEDIDO d
          WHERE d.id_producto = p.id_producto
      )
      AND NOT EXISTS (
          SELECT 1
          FROM PEDIDO o
          JOIN DETALLE_PEDIDO d2
            ON d2.id_pedido = o.id_pedido
          WHERE o.id_cliente = c.id_cliente
            AND d2.id_producto = p.id_producto
      )
);


-- 17. Clientes que compraron todos los productos del pedido O009
SELECT c.id_cliente, c.nombre
FROM CLIENTE c
WHERE NOT EXISTS (
    SELECT 1
    FROM DETALLE_PEDIDO base
    WHERE base.id_pedido = 'O009'
      AND NOT EXISTS (
          SELECT 1
          FROM PEDIDO o
          JOIN DETALLE_PEDIDO d
            ON d.id_pedido = o.id_pedido
          WHERE o.id_cliente = c.id_cliente
            AND d.id_producto = base.id_producto
      )
);


-- 18. Paqueterías que tienen estados Entregado y Pendiente
SELECT e.paqueteria
FROM ENVIO e
WHERE e.estado_envio IN ('Entregado', 'Pendiente')
GROUP BY e.paqueteria
HAVING COUNT(DISTINCT e.estado_envio) = 2;


-- 19. Clientes cuyos pedidos tienen pago aprobado
SELECT c.id_cliente, c.nombre
FROM CLIENTE c
WHERE NOT EXISTS (
    SELECT 1
    FROM PEDIDO o
    WHERE o.id_cliente = c.id_cliente
      AND NOT EXISTS (
          SELECT 1
          FROM PAGO g
          WHERE g.id_pedido = o.id_pedido
            AND g.estado_pago = 'Aprobado'
      )
);


-- 20. Productos cuyas reseñas existentes son todas mayores o iguales a 4
SELECT p.id_producto, p.nombre
FROM PRODUCTO p
WHERE EXISTS (
    SELECT 1
    FROM RESENA r
    WHERE r.id_producto = p.id_producto
)
AND NOT EXISTS (
    SELECT 1
    FROM RESENA r
    WHERE r.id_producto = p.id_producto
      AND r.calificacion < 4
);