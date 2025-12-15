-- Ex.3: Value of each unique order, and its no. ,cutsomer name sorted by total order value
SELECT 
	orderNumber,
    customerNumber,
    customerName,
	SUM(quantityOrdered*priceEach) AS OrderTotal
FROM orderDetails
JOIN orders o USING (orderNumber)  -- joined orders table in orderDetails table which is sorted by orderNumber
JOIN customers c USING (customerNumber) -- joined customers table in orderDetails table which is sorted by customerNumber
GROUP BY orderNumber
ORDER BY OrderTotal DESC