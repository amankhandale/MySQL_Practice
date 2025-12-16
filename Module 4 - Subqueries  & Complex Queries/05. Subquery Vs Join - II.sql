-- Example: Where JOIN is preferred over subquery
-- Customers who have ordered the product with product code "S18_1749"

SELECT customerNumber
FROM orderdetails
JOIN orders USING (orderNumber)
WHERE productCode = "S18_1749";

--  Customers (complete row of customers) who have ordered the product with product code "518_1749"

-- Subquery Method 

SELECT COUNT(*)
FROM customers
WHERE customerNumber IN (
	SELECT customerNumber
	FROM orderdetails
	JOIN orders USING (orderNumber)
	WHERE productCode = "S18_1749"
);

-- JOIN Method
SELECT DISTINCT *
FROM customers
JOIN orders USING (customerNumber)
JOIN orderdetails USING (orderNumber)
WHERE productCode = "S18_1749"