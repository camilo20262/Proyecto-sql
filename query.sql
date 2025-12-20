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


#10 ¿Qué empleados no tienen un jefe asignado?
SELECT employeeID,
       employeeName,
       reportsTo
FROM employees
WHERE reportsTo IS NULL;


#11.¿Cuántos pedidos ha gestionado cada empleado?

select e.employeeName,count(orderID) as pedidos
from employees as e
left join orders as o
on e.employeeID= o.employeeID
group by 1
order by pedidos desc

#12¿Cuánto dinero se ha facturado por cada pedido?
SELECT o.orderID,
       ROUND(
         SUM(od.unitPrice * od.quantity * (1 - od.discount)),
         2
       ) AS total_facturado
FROM orders o
LEFT JOIN order_details od
  ON o.orderID = od.orderID
GROUP BY o.orderID;

#13¿Cuáles son los productos más vendidos en términos de cantidad?

SELECT p.productName,sum(o.quantity) as 'cantidad vendida'
FROM products AS p
JOIN order_details AS o
ON p.productID= o.productID
join orders as ord
group by p.productName 
order by  sum(o.quantity) desc

#14Qué clientes han realizado más pedidos?
SELECT c.company_name,
       COUNT(o.orderID) AS cantidad_pedidos
FROM customers c
JOIN orders o
  ON c.customer_id = o.customerID
GROUP BY c.company_name
ORDER BY cantidad_pedidos DESC;













