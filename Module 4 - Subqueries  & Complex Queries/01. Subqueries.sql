-- Subqueries

-- Find products that have same product line as of "1917 Grand Touring Sedan"
-- This Hard code way (not reccomended to do this in real life scenario)
SELECT *
FROM products
WHERE productLine = 'Vintage Cars';


-- Using Subquery (Query inside a Query)
SELECT *
FROM  products
WHERE productLine =
	(SELECT productLine
	FROM products
	WHERE productName = "1917 Grand Touring Sedan");