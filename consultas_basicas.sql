-- Active: 1748975579213@@127.0.0.1@3307@taller_sql

SHOW TABLES;

-- 1
SELECT * FROM usuarios
WHERE tipo_id = 1;

-- 2
SELECT nombre, email FROM usuarios
WHERE ciudad = 'Madrid';