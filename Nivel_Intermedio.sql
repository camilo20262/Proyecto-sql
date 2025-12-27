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
