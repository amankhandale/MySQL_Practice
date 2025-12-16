-- Find out customers who never placed an orders (subqueries and joins Method)
-- Subquery Method -- (MORE READABLE METHOD )
SELECT COUNT(customerNumber) AS COUNT
FROM customers
WHERE customerNumber NOT IN (
	SELECT DISTINCT customerNumber
	FROM orders
);

-- JOIN Method -- (MORE PERFORMANCE METHOD)
SELECT COUNT(customerNumber) AS COUNT
FROM customers
LEFT JOIN orders USING (customerNumber)
WHERE orderNumber IS NULL;