-- Concept of Grouping by 2 or more columns 
-- Ex.7: Country wise - count of orders

-- Part 1
SELECT 
	country,
	COUNT(*) AS totalOrders

FROM 
	orders
JOIN
	customers USING (customerNumber)
GROUP BY
	country;
    
-- Part 2: Country wise - count of orders on each date
SELECT 
	country,
    orderDate,
	COUNT(*) AS totalOrders

FROM 
	orders
JOIN
	customers USING (customerNumber)
GROUP BY
	country,
    orderDate;