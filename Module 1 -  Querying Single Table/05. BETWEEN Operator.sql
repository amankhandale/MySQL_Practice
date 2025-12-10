-- BETWEEN Operator
SELECT creditLimit
FROM
	customers
WHERE 
	creditLimit > 20000 AND creditLimit <= 40000; -- this query is equivalent to the query below

SELECT creditLimit
FROM
	customers
WHERE
	creditLimit BETWEEN 20000 AND 40000;
    
-- ANOTHER Example
SELECT *
FROM payments
WHERE paymentDate BETWEEN '2003-05-31' AND '2004-05-31';
