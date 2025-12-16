-- Subquery in FROM Clause
-- Write a query create the following 'view' of payments table where difference > 0 (amount is higher than average)
SELECT *
FROM 
	(SELECT *, -- using the same last table as subquery
		-- average payment
		(SELECT AVG(amount) FROM payments) AS avgPayment,  
		amount - (SELECT avgPayment) AS Difference
	FROM payments) AS invoiceSummary -- alias is mandatory
WHERE Difference > 0;

-- Subquery can also be used to return a table