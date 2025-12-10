SELECT * 
FROM 
	orders
WHERE
	comments IS NULL;
    
SELECT * 
FROM 
	orders
WHERE 
	shippedDate IS NULL;
    
SELECT * 
FROM 
	orders
WHERE 
	shippedDate IS NOT NULL;
    
SELECT *
FROM 
	customers
WHERE
	state IS NOT NULL;
