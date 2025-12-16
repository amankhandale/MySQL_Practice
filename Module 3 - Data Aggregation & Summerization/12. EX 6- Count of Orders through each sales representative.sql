-- Ex.6: Number of orders through each sales representative
SELECT
	COUNT(orderNumber) AS numberOfOrders, 
    employeeNumber,
    firstName AS EmployeeName
FROM
	orders
JOIN
	customers USING (customerNumber)
JOIN employees
	ON customers.salesRepEmployeeNumber = employees.employeeNumber
GROUP BY
	employeeNumber