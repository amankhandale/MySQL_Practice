-- INNER JOIN
-- CustomerName in the payments table which doesn't exist
-- You can use INNER JOIN or JOIN 
SELECT 
	payments.customerNumber,
    paymentDate,
    amount,
    customerName
FROM
	payments
JOIN
	customers 
    ON payments.customerNumber = customers.customerNumber;

-- alias to table names  
-- [if you dont want to write the whole table name like paymment, customers]
-- denoting payments as 'p' & customers as 'c' 
SELECT 
	p.customerNumber,
    paymentDate,
    amount,
    customerName
FROM
	payments p
JOIN
	customers c
    ON p.customerNumber = c.customerNumber;
    
    
    
