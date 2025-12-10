USE classicmodels;

-- select whole table
SELECT *
FROM 
	employees
WHERE
	officeCode = 1
ORDER BY
	firstName;
    
-- -- selecting few select stateme
Select firstName, lastName
FROM
	employees
WHERE
	officeCode = 1
ORDER BY
	firstName;

/*Change the order of columns , you can have lastName as your first columnn */
SELECT lastName, firstName
FROM employees
WHERE officeCode = 1
ORDER BY firstName;
