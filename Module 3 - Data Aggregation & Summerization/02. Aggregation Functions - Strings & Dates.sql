SELECT  -- Finding the most recent order from payments table (Dates)
	MAX(paymentDate),
    MIN(paymentDate)
FROM
	payments;
    
SELECT -- Finding the most recent checkNumber from payments table (String)
	MAX(checkNumber),
    MIN(checkNumber)
FROM
	payments;