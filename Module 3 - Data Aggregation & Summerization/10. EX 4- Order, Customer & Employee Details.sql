-- Ex.3: Value of each unique order, and its no. ,cutsomer name and sales employee number sorted by total order value
SELECT 
	orderNumber,
    employeeNumber,
    firstName AS employeeFirstName, -- ADDED First Name
    lastName AS employeeLastName,   -- ADDED Last Name
    customerNumber,
    customerName,
	SUM(quantityOrdered*priceEach) AS OrderTotal
FROM orderDetails
JOIN orders USING (orderNumber)
JOIN customers USING (customerNumber) 
JOIN employees ON customers.salesRepEmployeeNumber = employees.employeeNumber -- can't use USING clause becuz the saleRepEmployeeNumber only exist in one table
GROUP BY orderNumber
ORDER BY OrderTotal DESC;