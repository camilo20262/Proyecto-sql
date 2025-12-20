#1.¿Cuántos clientes tiene la empresa registrados actualmente?
SELECT COUNT(*) AS total_clientes
FROM customers;

#2¿Qué productos vende la empresa y cuál es el precio de cada uno?

SELECT productName, unitPrice
FROM products;


#3.Cuáles son las categorías de productos que maneja la empresa?

SELECT categoryID, categoryName
FROM categories;


#4.¿Qué empleados trabajan actualmente en la compañía y en qué país están ubicados?
SELECT employeeName, country
FROM employees;


#5.¿Cuántos pedidos se han realizado en total?
SELECT COUNT(*) AS total_pedidos
FROM orders;


#6.¿Qué empresas de transporte utiliza Northwind para enviar sus pedidos?
SELECT shipperID, companyName
FROM shippers;


#7.¿Qué clientes pertenecen a un país específico (por ejemplo, Alemania o Brasil)?

SELECT customer_id,
       company_name,
       country
FROM customers
WHERE country = 'Germany';


#8.¿Qué productos están marcados como descontinuados?
SELECT productID,
       productName,
       discontinued
FROM products
WHERE discontinued = 1;




#9¿Qué pedidos aún no han sido enviados?
SELECT orderID,
       orderDate,
       shippedDate
FROM orders
WHERE shippedDate IS NULL;


#¿Qué empleados no tienen un jefe asignado?
SELECT employeeID,
       employeeName,
       reportsTo
FROM employees
WHERE reportsTo IS NULL;












