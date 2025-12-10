-- REGEXP Operator
/* Beginning of string
   Ending of string
   | logical or 
   [abcd]
   (a-z) */
   
SELECT *
FROM
	employees
WHERE
	jobTitle REGEXP "sale";
    
-- jobTitle which start with word 'sale'
SELECT *
FROM employees
WHERE jobTitle REGEXP "^sale"; -- this caret symbol is used to denote the begin of the word

-- jobTitle which ending with word 'rep'
SELECT *
FROM employees
WHERE jobTitle REGEXP "rep$"; -- this dollar symbol is used to denote the ending of the string

-- firstName begins with A or B
SELECT *
FROM employees
WHERE firstName REGEXP "^A | ^B";

-- firstName begins with a range of [A-H] = [ABCDEFGH]
SELECT *
FROM employees
WHERE firstName REGEXP "^[A-H]";

-- Exercise 1: Select first name begins wth [a-h] or the name ends with lie
SELECT *
FROM employees
WHERE firstName REGEXP "^[a-h]|lie$";

-- Exercise 2: Find phone numbers of customers that ends with 55
SELECT phone
FROM customers
WHERE phone REGEXP "55$";
