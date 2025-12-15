-- Ex.2: Value of each unique order sorted by total order value
SELECT 
	orderNumber,
	SUM(quantityOrdered*priceEach) AS OrderTotal
FROM orderDetails
GROUP BY orderNumber
ORDER BY OrderTotal DESC