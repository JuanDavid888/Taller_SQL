# Taller de SQL

**¡Bienvenidos al Taller de SQL!** En este taller exploraremos los fundamentos de SQL y aprenderemos a trabajar con consultas básicas y subconsultas en MySQL mediante un entorno de base de datos relacional realista.

---

## ✨ Objetivos del Taller

Durante este taller, aprenderás a:

1. Realizar consultas SQL básicas para extraer, filtrar y organizar datos.
2. Aplicar subconsultas para resolver problemas complejos y optimizar tus consultas.
3. Utilizar subconsultas en cláusulas como `WHERE` y `FROM`.

---


## 🔍 Consultas a realizar

1. Mostrar todos los datos de la tabla `usuarios`.
2. Listar nombres y correos de clientes en Madrid.
3. Productos con precio > $100.000.
4. Empleados con salario > $2.500.000.
5. Productos en categoría "Electrónica" ordenados por nombre.
6. Pedidos con estado "Pendiente".
7. Producto más caro.
8. Total de pedidos por cliente.
9. Promedio de salarios.
10. Cantidad de productos por categoría.
11. Precio de productos > $75 USD y su conversión.
12. Todos los proveedores registrados.

## 🔗 Consultas Multitabla (JOINS)

1. Nombres de clientes y detalles de pedidos.
2. Productos pedidos con su precio unitario.
3. Clientes y empleados que gestionaron sus pedidos.
4. Todos los pedidos, con o sin productos (`LEFT JOIN`).
5. Productos no incluidos en pedidos (`RIGHT JOIN`).
6. Empleados y pedidos gestionados (si existen).
7. Empleados sin pedidos (`LEFT JOIN` con `WHERE`).
8. Total gastado en cada pedido.
9. `CROSS JOIN` entre clientes y productos.
10. Clientes y productos comprados (incluso sin compras).
11. Proveedores por producto.
12. Productos por proveedor específico.
13. Proveedores sin productos asociados.
14. Cantidad de proveedores por producto.
15. Productos suministrados por `proveedor_id = 3`.
16. Proveedores del `producto_id = 1` con contacto.
17. Productos con cantidad de proveedores.
18. Proveedores con total de productos suministrados.

---

## 🧠 Subconsultas

1. Clientes con pedidos mayores a $500.000.
2. Productos nunca pedidos.
3. Empleados que gestionaron pedidos en últimos 6 meses.
4. Pedido con mayor total de ventas.
5. Clientes con más pedidos que el promedio.
6. Productos más caros que el promedio.
7. Clientes que gastaron más de $1.000.000.
8. Empleados con salario mayor al promedio.
9. Productos con ingresos mayores al promedio.
10. Cliente del pedido más reciente.
11. Productos pedidos en últimos 3 meses.
12. Empleados sin pedidos gestionados.
13. Clientes con más de 3 tipos distintos de productos.
14. Producto más caro pedido al menos 5 veces.
15. Clientes cuyo primer pedido fue un año después del registro.
16. Productos con stock inferior al promedio.
17. Clientes con menos de 3 pedidos.
18. Productos pedidos por clientes registrados en el último año.
19. Empleado con más pedidos gestionados.
20. Productos con cantidades pedidas superiores al promedio.
21. Proveedores con más productos que el promedio.
22. Proveedores solo de productos "Electrónica".
23. Productos con proveedores registrados hace más de un año.