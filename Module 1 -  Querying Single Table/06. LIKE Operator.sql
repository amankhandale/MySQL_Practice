SELECT 
	jobTitle
FROM
	employees
WHERE
	jobTitle LIKE "%Sale%"; -- we are looking jobtitle where "sales" is contain in the name
    
    /* NOTE: '%Sale% = VP SALES, SALES REP
			 '&SALE = VP SALES
             'Sale% = SALES REP */
             
SELECT
	firstName
FROM
	employees
WHERE
	firstName LIKE "%y"; -- Searching Names that ends with letter 'y'
    
SELECT 
	firstName
FROM
	employees
WHERE
	firstName LIKE "____y"; /* Searching Names that ends with y 
							But also how many characters to count in the search
                            ex. Here i used 4 underscore to represent 4 characters before 'y'
                            Result: Larry, Barry
