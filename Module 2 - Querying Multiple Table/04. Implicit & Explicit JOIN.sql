-- Implicit Join Syntax
-- we dont use the join keyword but we use where clause
SELECT
	p.customerNumber,
	paymentDate,
    amount,
    customerName
FROM
	payments p, customers c
WHERE p.customerNumber = c.customerNumber;



-- Explicit Join Syntax
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