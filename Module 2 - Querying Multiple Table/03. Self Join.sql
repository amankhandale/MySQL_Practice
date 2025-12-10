-- Self JOIN

SELECT 
	emp.employeeNumber,
    emp.firstName AS 'Employees Name',
    emp.jobTitle,
    mgr.firstName AS 'Manager Name',
    mgr.jobTitle 
FROM employees emp
JOIN employees mgr
	ON emp.reportsTo = mgr.employeeNumber