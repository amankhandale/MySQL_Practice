-- Subqueries Examples

-- Ex.1: Find cars that are costlier than "1936 Mercedes-Benz 500K Special Roadster"

SELECT *
FROM products
WHERE productLine REGEXP "car" AND MSRP >  --  filters for displaying cars only and MSRP greater than the car model
	(SELECT MSRP
	FROM products
    WHERE productName = "1936 Mercedes-Benz 500K Special Roadster"
    )