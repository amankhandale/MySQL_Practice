-- Ex.5: Count of orders place by each customer, and sale employee for that customer
SELECT 
	customerNumber,
    customerName,
    firstName,
    lastName,
	COUNT(*) AS cntOrderByCustomer
FROM orders
JOIN customers USING (customerNumber)
JOIN employees ON customers.salesRepEmployeeNumber = employees.employeeNumber
GROUP BY customerNumber;