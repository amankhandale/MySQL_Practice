-- Show Discounted Price for products due fesitival sale
SELECT 
	productCode,
    productName,
    buyPrice,
    MSRP AS "SellingPrice",
	(MSRP*0.9 + 5) AS "DiscountedPrice"
FROM
	products;
