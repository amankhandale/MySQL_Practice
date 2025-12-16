-- Subqueries with Aggregation

-- Find cars costlier than average cost of all cars
SELECT *
FROM products
WHERE productLine REGEXP "car" AND MSRP > (
	SELECT AVG (MSRP)  -- this shows avg amount of MSRP
    FROM products
    WHERE productLine IN ("Classic Cars","Vintage Cars")
);
