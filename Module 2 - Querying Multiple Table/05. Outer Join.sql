-- Outer Join
-- Customers -> what orders have been placed by each customer?
-- Inner join (problem - we dont get customers who haven't placed an order)
SELECT c.customerNumber, c.customerName, o.orderNumber
FROM 
	customers c
JOIN orders o
	ON c.customerNumber = o.customerNumber; -- problem with inner join we only getting other rows where this condition is true
    
-- Select customers who have not placed any order (Subquery)
SELECT customerNumber
FROM customers c
WHERE c.customerNumber NOT IN (
	-- get customersIds from, the orderTable
	SELECT DISTINCT o.customerNumber
    FROM orders o);
    
-- for every customer, show the orders that a customer has placed
-- Outer Join
-- There are two types of JOIN in Outer Join - LEFT JOIN & RIGHT JOIN
SELECT c.customerNumber, c.customerName, o.orderNumber
FROM 
	customers c
LEFT JOIN orders o
	ON c.customerNumber = o.customerNumber;   -- we wil retain from the left table -> customerNumber will shows all the customer number even those who have null orderNumber
/* RIGHT JOIN orders o
	ON c.customerNumber = o.customerNumber;*/ -- we wil retain from the Right table -> now we are mapping every orderNumber with customerNumber who has placed order

    