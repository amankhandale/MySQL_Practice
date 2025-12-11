-- Self Outer Join
-- Problem with Self Join - /* In the Whole table of employees, Diane Murphy didn't had a manager for jobTitle
							-- because he is the President, There is no President in the jobTitle of Inner join */
SELECT 
	emp.employeeNumber,
    emp.firstName AS 'Employees Name',
    emp.jobTitle,
    mgr.firstName AS 'Manager Name',
    mgr.jobTitle 
FROM employees emp
JOIN employees mgr
	ON emp.reportsTo = mgr.employeeNumber;
    
-- SELF OUTER JOIN 
-- now you can see Diane as President with Manager Name Null
SELECT 
	emp.employeeNumber,
    emp.firstName AS 'Employees Name',
    emp.jobTitle,
    mgr.firstName AS 'Manager Name',
    mgr.jobTitle 
FROM employees emp
LEFT JOIN employees mgr
	ON emp.reportsTo = mgr.employeeNumber;