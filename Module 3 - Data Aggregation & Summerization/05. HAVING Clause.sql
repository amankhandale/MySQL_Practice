-- HAVING Clause
-- offices having more than 4 employees
SELECT											-- THIS IS WHAT HAPPENS BEHIND THE SCENE
	officeCode, 				 -- FROM > WHERE > GROUP BY > HAVING > SELECT > DISTINCT > ORDER BY > LIMIT
    city,										 				
    COUNT(employeeNumber) AS employeeCnt
FROM
	employees
    JOIN offices USING (officeCode)
WHERE officeCode IN (1,2,4,5)
-- WHERE employeeCnt > 4 --  CAN ONLY FILTER OUT ROWS BEFORE GROUPING
GROUP BY 
	officeCode
HAVING  -- SO WE WILL USE HAVING Clause
	employeeCnt > 4 -- filter out rows after grouping