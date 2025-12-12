-- Summerising Data
-- --------------------------
-- Real Life Business Usecase
	-- # No of orders placed daily / monthly
    -- # No of unique customers every month
    -- # Year wise increase in profits / sales
    -- # Month wise increase in enrollments
    -- # Average ratings per course
    
-- ---------------------------
-- Aggregate Functions in SQL
-- ---------------------------
-- MAX()
-- MIN()
-- AVG()
-- SUM()
-- COUNT()

-- MAX() & MIN() Function
SELECT 
	MAX(amount) AS highestPayment,
    MIN(amount) AS lowestPayment
FROM  payments;

-- QUERY 1
SELECT
	MAX(amount) AS highestPayment,
    MIN(amount) AS lowestPayment,
    AVG(amount) AS averagePayment,
    SUM(amount) AS totalPayment
FROM
	payments;
    
-- QUERY 2
-- The COUNT Function only counts non-null values|
-- That means the orders that doesn't have shipped date, it doesn't count/shipped 
SELECT
	COUNT(requiredDate) AS orderCnt,
    COUNT(shippedDate) AS shippedOrders
FROM 
	orders;

-- QUERY 3 -> COUNT OF ALL THE ROWS
SELECT
	COUNT(*) AS totalOrders  -- Total No. of Rows 
FROM orders;

