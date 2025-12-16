-- ALL keyword|
-- Find products costlier than all trucks
SELECT *
FROM products
WHERE MSRP > ALL(  -- displays MSRP greater than 136
	-- max price of the truck
	SELECT MSRP
    FROM products
    WHERE productLine REGEXP "truck"
);

-- Find products earlier than the costlier truck
SELECT *
FROM products
WHERE MSRP > (
	-- max price of the truck
    SELECT MAX(MSRP)
    FROM products
    WHERE productLine REGEXP "truck"
);