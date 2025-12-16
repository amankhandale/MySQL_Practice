-- -------------------------
-- Correlated Subqueries
-- -------------------------
-- Find Products whose price are higher than averag MSRP in their corresponding product line
-- Performance, yet powerful and useful in real life
SELECT *
FROM products p
WHERE MSRP > (
	SELECT AVG(MSRP)
	FROM products
    WHERE productLine = p.productLine
);
	SELECT AVG(MSRP)
    FROM products
    WHERE productLine = "Classic Cars"