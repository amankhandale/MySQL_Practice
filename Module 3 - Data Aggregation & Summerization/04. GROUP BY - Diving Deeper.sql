-- Understanding GROUP BY Syntax in more detail
-- standard template
SELECT
	c1, c2,....,cn, aggregate_function(ci)
FROM
	table
GROUP BY c1 , c2,....,cn;

-- count of employees, display office code, location that work in the same office
SELECT
	officeCode, -- c1
    city, -- c2
    state,
    COUNT(employeeNumber) AS employeeCnt -- aggregate function
FROM
	employees
    JOIN offices USING (officeCode)
GROUP BY
	officeCode