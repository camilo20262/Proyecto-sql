#19. Análisis de Descuentos
#¿Cuál es el descuento promedio aplicado por producto? ¿Hay productos que nunca reciben descuentos?
SELECT 
    p.productName,
    ROUND(AVG(od.discount), 2) AS descuento_promedio,
    MAX(od.discount) AS descuento_maximo
FROM products p
LEFT JOIN order_details od
  ON p.productID = od.productID
GROUP BY p.productName
ORDER BY descuento_promedio DESC;


#20. Rentabilidad por Categoría
#Calcula el ingreso total (quantity × unitPrice × (1-discount)) por categoría de producto. ¿Cuál es la más rentable?

select c.categoryName,
		round(sum(od.quantity * od.unitPrice * (1-od.discount)),2) as ingreso_total
fROM products p
LEFT JOIN order_details od
  ON p.productID = od.productID
join categories as c
on p.categoryID =c.categoryID
group by 1
order by ingreso_total desc