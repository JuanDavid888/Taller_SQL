-- Active: 1748975579213@@127.0.0.1@3307@taller_sql

SHOW TABLES;

-- 1
SELECT nombre AS Cliente, detalle_id, pedido_id, cantidad, precio_unitario  FROM usuarios AS u
JOIN detalles_pedidos AS d ON u.usuario_id = d.pedido_id
WHERE u.tipo_id = 1;

-- 2
SELECT nombre, precio_unitario FROM detalles_pedidos AS dp
JOIN productos AS p ON dp.producto_id = p.producto_id

-- 3
SELECT 
    u.nombre AS cliente,
    e_usuario.nombre AS empleado
FROM pedidos AS p
JOIN usuarios AS u ON p.cliente_id = u.usuario_id
JOIN empleados AS e ON p.empleado_id = e.empleado_id
JOIN usuarios AS e_usuario ON e.usuario_id = e_usuario.usuario_id;

-- 4
SELECT 
    dp.pedido_id,
    pe.cliente_id,
    pe.empleado_id,
    pr.nombre AS producto,
    pe.fecha_pedido,
    pe.estado
FROM pedidos AS pe
LEFT JOIN detalles_pedidos AS dp ON pe.pedido_id = dp.pedido_id
LEFT JOIN productos AS pr ON dp.producto_id = pr.producto_id

-- 5
SELECT 
    dp.producto_id AS detalle_id,
    pr.nombre AS producto,
    pr.categoria,
    pr.precio
FROM productos AS pr
RIGHT JOIN detalles_pedidos AS dp ON pr.producto_id = dp.producto_id
