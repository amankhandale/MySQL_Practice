-- Ex.8: Find customers whose total order value > 80,000 across all their orders
SELECT 
	c.customerNumber,
    c.customerName,
    SUM(od.quantityOrdered * od.priceEach) AS totalOrderValue -- get the sum of total order value
FROM 
	customers c
JOIN
	orders o USING (customerNumber)
JOIN
	orderdetails od USING (orderNumber)
WHERE
	country = 'France' -- filter out orders only from france
GROUP BY
	c.customerNumber,
    c.customerName
HAVING
	totalOrderValue > 80000 -- shows only the order values that are greater than 80000