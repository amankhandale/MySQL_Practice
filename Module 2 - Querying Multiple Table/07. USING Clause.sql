-- The Using Clause
-- Use this method when customerNumber column is same in both table
-- Simplified Version (Using Clause)
SELECT c.customerNumber, customerName, o.orderNumber
FROM customers c
LEFT JOIN orders o
	USING (customerNumber);
    
    
-- This outer join example will give me the same result as above
-- Use this method when the column name is different
-- so it makes much more sense to use this method in that case (OUTER JOIN)
SELECT c.customerNumber, c.customerName, o.orderNumber
FROM 
	customers c
LEFT JOIN orders o
	ON c.customerNumber = o.customerNumber;   -- we wil retain from the left table -> customerNumber will shows all the customer number even those who have null orderNumber
    
-- Example of Joining Two Tables (O -> C -> E)|
SELECT
	orderNumber,
	status,
    o.customerNumber,
    c.customerName,
    c.salesRepEmployeeNumber,
    e.firstName AS 'Sales Person Name',
    e.jobTitle
FROM 
	orders o
JOIN customers c
	USING (customerNumber) -- Used here
JOIN 
	employees e
    ON c.salesRepEmployeeNumber = e.employeeNumber; -- Second Join

