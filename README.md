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

1. Consulta todos los datos de la tabla `usuarios` para ver la lista completa de clientes.
2. Muestra los nombres y correos electrónicos de todos los clientes que residen en la ciudad de Madrid.
3. Obtén una lista de productos con un precio mayor a $100.000, mostrando solo el nombre y el precio.
4. Encuentra todos los empleados que tienen un salario superior a $2.500.000, mostrando su nombre, puesto y salario.
5. Lista los nombres de los productos en la categoría "Electrónica", ordenados alfabéticamente.
6. Muestra los detalles de los pedidos que están en estado "Pendiente", incluyendo el ID del pedido, el ID del cliente y la fecha del pedido.
7. Encuentra el nombre y el precio del producto más caro en la base de datos.
8. Obtén el total de pedidos realizados por cada cliente, mostrando el ID del cliente y el total de pedidos.
9. Calcula el promedio de salario de todos los empleados en la empresa.
10. Encuentra el número de productos en cada categoría, mostrando la categoría y el número de productos.
11. Obtén una lista de productos con un precio mayor a $75 USD, mostrando solo el nombre, el precio y su respectivo precio en USD.
12. Lista todos los proveedores registrados.

## 🔗 Consultas Multitabla (JOINS)

1. Encuentra los nombres de los clientes y los detalles de sus pedidos.
2. Lista todos los productos pedidos junto con el precio unitario de cada pedido
3. Encuentra los nombres de los clientes y los nombres de los empleados que gestionaron sus pedidos
4. Muestra todos los pedidos y, si existen, los productos en cada pedido, incluyendo los pedidos sin productos usando `LEFT JOIN`
5. Encuentra los productos y, si existen, los detalles de pedidos en los que no se ha incluido el producto usando `RIGHT JOIN`.
6. Lista todos los empleados junto con los pedidos que han gestionado, si existen, usando `LEFT JOIN` para ver los empleados sin pedidos.
7. Encuentra los empleados que no han gestionado ningún pedido usando un `LEFT JOIN` combinado con `WHERE`.
8. Calcula el total gastado en cada pedido, mostrando el ID del pedido y el total, usando `JOIN`.
9. Realiza un `CROSS JOIN` entre clientes y productos para mostrar todas las combinaciones posibles de clientes y productos.
10. Encuentra los nombres de los clientes y los productos que han comprado, si existen, incluyendo los clientes que no han realizado pedidos usando `LEFT JOIN`.
11. Listar todos los proveedores que suministran un determinado producto.
12. Obtener todos los productos que ofrece un proveedor específico.
13. Lista los proveedores que no están asociados a ningún producto (es decir, que aún no suministran).
14. Contar cuántos proveedores tiene cada producto.
15. Para un proveedor determinado (p. ej. `proveedor_id = 3`), muestra el nombre de todos los productos que suministra.
16. Para un producto específico (p. ej. `producto_id = 1`), muestra todos los proveedores que lo distribuyen, con sus datos de contacto.
17. Cuenta cuántos proveedores tiene cada producto, listando `producto_id`, `nombre` y `cantidad_proveedores`.
18. Cuenta cuántos productos suministra cada proveedor, mostrando `proveedor_id`, `nombre_proveedor` y `total_productos`.

---

## 🧠 Subconsultas

1. Encuentra los nombres de los clientes que han realizado al menos un pedido de más de $500.000.
2. Muestra los productos que nunca han sido pedidos.
3. Lista los empleados que han gestionado pedidos en los últimos 6 meses.
4. Encuentra el pedido con el total de ventas más alto.
5. Muestra los nombres de los clientes que han realizado más pedidos que el promedio de pedidos de todos los clientes.
6. Obtén los productos cuyo precio es superior al precio promedio de todos los productos.
7. Lista los clientes que han gastado más de $1.000.000 en total.
8. Encuentra los empleados que ganan un salario mayor al promedio de la empresa.
9. Obtén los productos que generaron ingresos mayores al ingreso promedio por producto.
10. Encuentra el nombre del cliente que realizó el pedido más reciente.
11. Muestra los productos pedidos al menos una vez en los últimos 3 meses.
12. Lista los empleados que no han gestionado ningún pedido.
13. Encuentra los clientes que han comprado más de tres tipos distintos de productos.
14. Muestra el nombre del producto más caro que se ha pedido al menos cinco veces.
15. Lista los clientes cuyo primer pedido fue un año después de su registro.

16. Encuentra los nombres de los productos que tienen un stock inferior al promedio del stock de todos los productos.
17. Lista los clientes que han realizado menos de tres pedidos.
18. Encuentra los nombres de los productos que fueron pedidos por los clientes que registraron en el último año.
19. Obtén el nombre del empleado que gestionó el mayor número de pedidos.
20. Lista los productos que han sido comprados en cantidades mayores que el promedio de cantidad de compra de todos los productos.
21. Proveedores que suministran más productos que el promedio de productos por proveedor.
22. Proveedores que solo suministran productos de la categoría "Electrónica".
23. Productos que solo tienen proveedores registrados hace más de un año.