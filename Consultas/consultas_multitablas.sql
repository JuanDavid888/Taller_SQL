-- Active: 1748438202902@@127.0.0.1@3307@taller_sql

SHOW TABLES;

-- 1
SELECT 
    u.nombre,
    dp.pedido_id,
    dp.producto_id,
    dp.cantidad,
    dp.precio_unitario 
FROM usuarios AS u
JOIN pedidos AS pe ON pe.cliente_id = u.usuario_id
JOIN detalles_pedidos AS dp ON dp.pedido_id = pe.pedido_id
WHERE tipo_id = 1;

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
FROM detalles_pedidos AS dp
RIGHT JOIN productos AS pr ON pr.producto_id = dp.producto_id

-- 6
SELECT pe.pedido_id, pe.cliente_id, pe.empleado_id, e.puesto, pe.fecha_pedido FROM pedidos AS pe -- Sujeto de intercepcion
LEFT JOIN empleados AS e ON e.empleado_id = pe.empleado_id; -- Sujeto de data completa

-- 7
SELECT * FROM pedidos
WHERE empleado_id NOT IN (
    SELECT empleado_id
    FROM pedidos
);

-- 8
SELECT pe.cliente_id, dp.cantidad FROM pedidos AS pe
JOIN detalles_pedidos AS dp ON pe.pedido_id = dp.pedido_id;

-- 9
SELECT * FROM usuarios AS u
CROSS JOIN productos AS pr
WHERE tipo_id = 1;

-- 10
SELECT 
    u.nombre AS 'Nombre_cliente',
    pr.nombre AS 'Producto_comprado' 
FROM pedidos AS pe
LEFT JOIN usuarios AS u ON u.usuario_id = pe.cliente_id
LEFT JOIN detalles_pedidos AS dp ON dp.pedido_id = pe.pedido_id
LEFT JOIN productos AS pr ON pr.producto_id = dp.producto_id
WHERE tipo_id = 1;

-- 11
SELECT pv.nombre AS 'Nombre_proveedor', pr.nombre AS 'Producto' FROM proveedores_productos AS pv_pr
JOIN proveedores AS pv ON pv.proveedor_id = pv_pr.proveedor_id
JOIN productos AS pr ON pr.producto_id = pv_pr.producto_id;

-- 12
SELECT pv.nombre AS 'Nombre_proveedor', pr.nombre AS 'Producto' FROM proveedores_productos AS pv_pr
JOIN proveedores AS pv ON pv.proveedor_id = pv_pr.proveedor_id
JOIN productos AS pr ON pr.producto_id = pv_pr.producto_id
WHERE pv.nombre = 'Global Components Ltda.';

-- 13
SELECT * FROM proveedores
WHERE proveedor_id NOT IN (
    SELECT proveedor_id
    FROM proveedores_productos
);

-- 14
SELECT pv.nombre, COUNT(pv_pr.producto_id) AS total_productos
FROM proveedores_productos AS pv_pr
JOIN proveedores AS pv ON pv.proveedor_id = pv_pr.proveedor_id
GROUP BY pv.proveedor_id;

-- 15
SELECT pv_pr.proveedor_id, pr.nombre FROM proveedores_productos AS pv_pr
JOIN productos AS pr ON pv_pr.producto_id = pr.producto_id
WHERE pv_pr.proveedor_id = 3;

-- 16
SELECT pr.producto_id, pv.nombre FROM productos AS pr
JOIN proveedores_productos AS pv_pr ON pv_pr.producto_id = pr.producto_id
JOIN proveedores AS pv ON pv.proveedor_id = pv_pr.proveedor_id
WHERE pr.producto_id = 1

-- 17
SELECT 
    pr.producto_id,
    pr.nombre,
    COUNT(pv_pr.proveedor_id) AS 'Cantidad_proveedores'
FROM proveedores_productos AS pv_pr
JOIN productos AS pr ON pr.producto_id = pv_pr.producto_id
GROUP BY pr.producto_id
ORDER BY pr.producto_id ASC;

-- 18
SELECT 
    pv_pr.proveedor_id,
    pv.nombre,
    COUNT(pv_pr.producto_id) AS 'Cantidad_productos'
FROM proveedores_productos AS pv_pr
JOIN proveedores AS pv ON pv_pr.proveedor_id = pv.proveedor_id
GROUP BY pv_pr.proveedor_id;