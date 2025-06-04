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