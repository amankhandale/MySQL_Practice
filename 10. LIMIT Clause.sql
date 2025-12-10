SELECT *
FROM 
	customers
LIMIT 10; -- SHOWS ONLY LIMITED ROWS

-- you skip first 30 record and see the 10 records that comes after those 30 records
SELECT *
FROM 
	customers
LIMIT 30,10; -- Records that comes after first 30 records

-- Exercise - Find out customer with highest credit limit (top 5 customers)
SELECT creditLimit
FROM customers
ORDER BY creditLimit DESC
LIMIT 5;
