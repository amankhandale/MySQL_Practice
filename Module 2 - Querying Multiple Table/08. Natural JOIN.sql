-- Natural Join
-- We dont specify the columns which we need to perform a join
-- The Database Engine automatically figures out
-- Normally if you run without specifying the column you will get multiple column result
-- but if you specify the column it will join all the familiar columns from table across the database 
SELECT orderNumber, customerNumber, customerName
FROM orders
NATURAL JOIN customers;

-- we dont recommend to use this
-- because you lose control on the join condition and expected results