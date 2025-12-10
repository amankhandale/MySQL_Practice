-- (!=) and (<>) mean not equal to [ both sign will give same output
SELECT *
FROM 
	orders
WHERE
	status != "Shipped";
    
-- Exercise: Find out the payment where the amount is greater than 40000.
SELECT 
	amount
FROM 
	payments
WHERE NOT
	(amount >= 40000 AND amount <= 60000); -- USING NOT OR USING INVERTED SIGN & OR STATEMENT GIVES YOU SAME RESULT
    -- (amount <= 40000 OR amount >= 60000) -- INVERTED SIGN USED HERE WITH OR STATEMENT

-- Logical Operator: AND, OR, NOT

-- Query: Payment >= 2005-05-25
SELECT 
	*
FROM 
	payments
WHERE
	(amount <= 40000 OR amount >= 60000) AND  -- AND has higher preference, so you should explicitly use brackets
    paymentDate >= '2005-05-25'