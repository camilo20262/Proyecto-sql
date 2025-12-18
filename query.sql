#1.¿Cuántos clientes tiene la empresa registrados actualmente?
select  count(* )
from customers  

#2¿Qué productos vende la empresa y cuál es el precio de cada uno?

select p.productName,o.quantity
from products  as p 
join order_details as o
on p.productID= o.productID
group by p.productName,o.quantity
order by o.quantity desc

#3.Cuáles son las categorías de productos que maneja la empresa?

select   p.productName, c.categoryName 
from products as p
join categories as c
on p.categoryID = c.categoryID


#4.¿Qué empleados trabajan actualmente en la compañía y en qué país están ubicados?
select employeeName,country
from employees 

#5.¿Cuántos pedidos se han realizado en total?
select  count(orderID)
from orders

#6.¿Qué empresas de transporte utiliza Northwind para enviar sus pedidos?
select *
from shippers 

#7.¿Qué clientes pertenecen a un país específico (por ejemplo, Alemania o Brasil)?

select  contact_name,country 
from customers 

#8.¿Qué productos están marcados como descontinuados?
select *
from products
where discontinued = '0'



#9¿Qué pedidos aún no han sido enviados?
select *
from orders

#¿Qué empleados no tienen un jefe asignado?
select  *
from employees 
where reportsTo =0













