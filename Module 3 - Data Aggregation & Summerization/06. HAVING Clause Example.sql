-- HAVING Clause Example
-- ------------------------
-- Query 11: Country wise count of orders, display orders orderCnt > 20
SELECT 
	country,
    COUNT(*) AS totalOrders
FROM orders
JOIN customers USING (customerNumber)
GROUP BY country
HAVING totalOrders > 20
