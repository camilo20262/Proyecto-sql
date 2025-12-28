#9. Ventas Totales por Empleado
#¿Cuánto dinero en ventas ha generado cada empleado? (Calcula: unitPrice × quantity - discount). Ordena de mayor a menor.
SELECT c.employeeName,
       ROUND(
         SUM(od.unitPrice * od.quantity * (1 - od.discount)),
         2
       ) AS ventas
FROM employees AS c
JOIN orders AS o
  ON c.employeeID = o.employeeID
JOIN order_details AS od
  ON o.orderID = od.orderID
GROUP BY c.employeeName
ORDER BY ventas DESC;


# 10. Producto Más Vendido
#¿Cuál es el producto que más unidades se ha vendido en total?


select p.productName,sum(o.quantity) as cantidad_vendidas
from products as p
join order_details as o
on p.productID = o.productID
group by 1
order by cantidad_vendidas desc
limit 1


#11. Clientes de un País Específico
#¿Cuántos clientes tenemos en Estados Unidos? ¿Y en el Reino Unido?

select count(*)AS UK,(SELECT COUNT(*) FROM customers where country ="USA")as USA
from customers
where country ="UK"


#12. Promedio de Precios por Categoría
#¿Cuál es el precio promedio de los productos en cada categoría?
SELECT c.categoryName,
       ROUND(AVG(p.unitPrice), 2) AS precio_promedio
FROM categories c
JOIN products p
  ON c.categoryID = p.categoryID
GROUP BY c.categoryName
ORDER BY precio_promedio DESC;


#13. Órdenes sin Enviar
#¿Cuántas órdenes han sido creadas pero aún no se han enviado (shippedDate es NULL)?

select count(*)
from orders 
where shippedDate is null


#14. Top 5 Clientes por Número de Órdenes
#¿Cuáles son los 5 clientes que más órdenes han realizado?

select c.contact_name,count(o.orderID) as ordenes
from customers as c
join orders as o
on c.customer_id = o.customerID
group by 1
order by ordenes desc
limit 5




