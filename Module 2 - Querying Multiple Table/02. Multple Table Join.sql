-- Joining Multiple Tables
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
    ON o.customerNumber = c.customerNumber -- First Join
JOIN 
	employees e
    ON c.salesRepEmployeeNumber = e.employeeNumber; -- Second Join