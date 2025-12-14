-- EX.1: Total payments from each customer after a certain date
SELECT 
	customerName,
	customerNumber,
	SUM(amount) AS totalOrderValue
FROM
	payments
JOIN
	customers USING (customerNumber)  -- joining customers table
WHERE
	paymentDate > '2004-02-02' -- filtering through certain date
GROUP BY
	customerNumber;