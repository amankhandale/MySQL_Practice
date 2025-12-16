-- EXISTS Operator
-- Select customers who have made any payment
SELECT *
FROM customers
WHERE customerNumber IN (
	SELECT DISTINCT customerNumber
	FROM payments
);

-- Using EXIST Operator
SELECT *
FROM customers c
WHERE EXISTS ( -- return true/false as soon as a customer is found in the payment table
	SELECT customerNumber
    FROM payments
    WHERE customerNumber = c.customerNumber
);