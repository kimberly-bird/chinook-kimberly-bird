SELECT MAX(highest.Country) AS "Highest Spending Country", MAX(highest.Sales) AS "Sales"
FROM (
	SELECT BillingCountry AS "Country", SUM(Total) AS "Sales"
	FROM Invoice
	GROUP BY BillingCountry
) AS "highest";
