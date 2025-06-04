-- Active: 1749062362566@@127.0.0.1@3307@taller_sql

SHOW TABLES;

-- 1
SELECT * FROM usuarios
WHERE tipo_id = 1;

-- 2
SELECT nombre, email FROM usuarios
WHERE ciudad = 'Madrid';

-- 3
SELECT nombre, precio FROM productos
WHERE precio > 100000;

-- 4
SELECT nombre, puesto, salario FROM empleados as e
JOIN usuarios as u ON e.usuario_id = u.usuario_id
WHERE salario > 2500000;

-- 5
SELECT nombre FROM productos
WHERE categoria = 'Electrnica'
ORDER BY nombre ASC;

--6
SELECT pedido_id, cliente_id, fecha_pedido FROM pedidos
WHERE estado = 'Pendiente';

--7
SELECT nombre, precio FROM productos
WHERE precio = (SELECT MAX(precio) FROM productos);

-- 8
SELECT cliente_id, COUNT(pedido_id) AS TotalPedidos FROM pedidos
GROUP BY cliente_id;

-- 9
SELECT AVG(salario) AS promedio_salarios FROM empleados;

-- 10
SELECT categoria, COUNT(categoria) AS numero_productos FROM productos
GROUP BY categoria;

-- 11
SELECT nombre, precio AS precio_COP, ROUND(precio / 4283.62, 2) AS precio_USD FROM productos
WHERE precio > 75;

-- 12
SELECT * FROM proveedores;