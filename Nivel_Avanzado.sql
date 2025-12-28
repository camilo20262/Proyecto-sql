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