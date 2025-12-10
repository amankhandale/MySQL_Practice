-- IN Operator
SELECT * 
FROM 
	classicmodels.employees
WHERE
	officeCode=1 OR officeCode=2 OR officeCode=4; -- <- instead of writing this

-- You can do this
SELECT *
FROM
	employees
WHERE
	officeCode IN (1,2,4) -- <- IN Operator
ORDER BY 
	officeCode;