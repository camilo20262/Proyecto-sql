#1. Lista de Clientes
#Obtén el nombre y ciudad de todos los clientes de la empresa, ordenados alfabéticamente por nombre.

select contact_name,city
from customers 
order by 1 asc

#2. Productos Disponibles
#¿Cuáles son los nombres de todos los productos que están activos (no discontinuados)?

select productName
from products 
where discontinued = 0

#3. Empleados por País
#¿En qué ciudades trabajan nuestros empleados? Lista las ciudades únicas sin repeticiones.

select distinct city
from employees 

#4. Rango de Precios
#¿Cuál es el precio más alto y más bajo de nuestros productos?

select max(unitPrice),min(unitPrice)
from products 

#5. Órdenes Recientes
#¿Cuántas órdenes se realizaron en total? ¿Cuál fue la orden más reciente?

select count(orderID),max(orderDate)
from orders 

#6. Categorías de Productos
#¿Cuántas categorías de productos diferentes tenemos?

SELECT COUNT(*) AS total_categorias
FROM categories

#7. Información de un Cliente Específico
#Obtén toda la información de contacto del cliente "ALFKI".

select *
from customers
where customer_id ="ALFKI"

#8. Productos de una Categoría
#¿Cuáles son los productos en la categoría "Beverages"?

SELECT p.productName
FROM categories AS c
JOIN products AS p
  ON c.categoryID = p.categoryID
WHERE c.categoryName = 'Beverages';





