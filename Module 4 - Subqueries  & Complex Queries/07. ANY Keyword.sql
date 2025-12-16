-- ANY Keyword
-- SELECT clients who have made atleast two payments

-- ANY Method
SELECT *
FROM customers
WHERE customerNumber = ANY (
	SELECT customerNumber
	FROM payments
	GROUP BY customerNumber
	HAVING COUNT(*) >=2
);


-- IN Keyword
SELECT *
FROM customers
WHERE customerNumber IN(
	SELECT customerNumber
	FROM payments
	GROUP BY customerNumber
	HAVING COUNT(*) >=2
);