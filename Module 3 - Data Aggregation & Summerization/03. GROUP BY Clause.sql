-- GROUP By Clause
-- ----------------
-- Shows the No. of Prodct exist in Product Table
SELECT 
	COUNT(*)
FROM 
	products;

-- Shows all the type of product exist in productLine column    
SELECT 
	DISTINCT productLine
FROM
	products;
    
-- Shows no. of product in each product Line
SELECT
	productLine,
	COUNT(*) AS productCount
FROM
	products
GROUP BY
	productLine;