-- Active: 1749062362566@@127.0.0.1@3307@taller_sql

SHOW TABLES;

-- 1
SELECT u.nombre FROM usuarios AS u
JOIN pedidos AS pe ON pe.cliente_id = u.usuario_id
JOIN detalles_pedidos AS dp ON pe.pedido_id = dp.pedido_id
WHERE dp.precio_unitario > 500000;

-- 2
SELECT * FROM pedidos
WHERE estado = 'Cancelado';

-- 3
SELECT empleado_id FROM pedidos
WHERE fecha_pedido >= CURDATE() - INTERVAL  6 MONTH; -- < = todas las fechas, sin incluir los ultimos N meses, > = incluye fechas dentro de N meses

-- 4
SELECT 
    pedido_id,
    producto_id,
    (cantidad * precio_unitario) AS 'Precio_mas_alto' 
FROM detalles_pedidos
ORDER BY Precio_mas_alto DESC
LIMIT 1;

-- 5
SELECT
    COUNT(pe.pedido_id) AS Total_pedidos,
    u.nombre
FROM pedidos AS pe
JOIN usuarios AS u ON u.usuario_id = pe.cliente_id
GROUP BY pe.cliente_id
HAVING Total_pedidos > (
    SELECT AVG(Pedidos_usuarios)
    FROM (
        SELECT COUNT(pe2.pedido_id) AS Pedidos_usuarios
        FROM pedidos AS pe2
        GROUP BY pe2.cliente_id
    ) AS sub
);

-- 6
SELECT
    pr.nombre AS Nombre,
    AVG(pr.precio) AS Precio_producto
FROM productos AS pr
GROUP BY pr.nombre
HAVING Precio_producto > (
    SELECT AVG(precio)
    FROM productos
);

-- 7
SELECT 
    u.nombre,
    dp.precio_unitario
FROM detalles_pedidos dp
JOIN pedidos p ON p.pedido_id =  dp.pedido_id
JOIN usuarios u ON u.usuario_id = p.cliente_id
WHERE dp.precio_unitario > 1000000;

-- 8
SELECT 
    e.empleado_id,
    AVG(e.salario) AS Salario
FROM empleados AS e
GROUP BY e.empleado_id
HAVING Salario > (
    SELECT AVG(salario)
    FROM empleados
);

-- 9
SELECT 
    dp.producto_id,
    pr.nombre,
    (dp.cantidad * dp.precio_unitario) AS Total 
FROM detalles_pedidos dp
JOIN productos pr ON pr.producto_id = dp.producto_id
ORDER BY Total DESC
LIMIT 3;

-- 10
SELECT
    pe.cliente_id,
    u.nombre,
    pe.fecha_pedido
FROM pedidos pe
JOIN usuarios u ON u.usuario_id = pe.cliente_id
WHERE u.tipo_id = 1
ORDER BY pe.fecha_pedido DESC
LIMIT 1;

-- 11
SELECT
    pe.pedido_id,
    pr.producto_id,
    pr.nombre,
    pe.fecha_pedido
FROM pedidos pe
LEFT JOIN detalles_pedidos dp ON pe.pedido_id = dp.pedido_id
LEFT JOIN productos pr ON pr.producto_id = dp.producto_id 
WHERE pe.fecha_pedido >= CURDATE() - INTERVAL 3 MONTH