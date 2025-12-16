-- Subquery in Select Clause
-- ----------------------------
-- Write a query create the following 'view' of payments table

SELECT *,
	-- average payment
    (SELECT AVG(amount) FROM payments) AS avgPayment, -- subquery
    amount - (SELECT avgPayment) AS "Difference" -- expression
FROM payments