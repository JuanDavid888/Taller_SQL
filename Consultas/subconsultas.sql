-- Active: 1748438202902@@127.0.0.1@3307@taller_sql

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
    SELECT AVG(Mayor_pedido)
    FROM (
        SELECT COUNT(pe2.pedido_id) AS pedidos_por_usuario
        FROM pedidos AS pe2
        GROUP BY pe2.cliente_id
    ) AS sub
);