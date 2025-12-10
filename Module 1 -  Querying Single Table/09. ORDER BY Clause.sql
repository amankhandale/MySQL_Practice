-- ORDER BY Operator 
-- lets you categorize any table in ascending order
-- [by default it is categorized based on customerNumber]
SELECT *
FROM 
	customers
ORDER BY 
	contactFirstName;
    
-- you can also categorized table in descending order too [by usng DESC keyword]
SELECT *
FROM
	customers
ORDER BY
	city DESC;

-- This sorting can also be done in 2 levels
SELECT customerNumber,
	   contactLastName,
       contactFirstName,
       city
FROM
	customers
ORDER BY
	city DESC, contactLastName;
