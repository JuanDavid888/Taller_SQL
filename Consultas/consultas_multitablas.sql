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