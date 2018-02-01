SELECT MAX(Top2009Sales.EmployeeName) AS "EmployeeName", MAX(Top2009Sales.Sales) AS "Sales"
FROM (
	SELECT e.FirstName || " " || e.LastName AS "EmployeeName", SUM(i.Total) AS "Sales"
	FROM Employee e, Invoice i, Customer c
	WHERE i.CustomerId == c.CustomerId
	AND c.SupportRepId == e.EmployeeId
	AND i.InvoiceDate BETWEEN "2009-01-01" AND "2009-12-31"
	GROUP BY "EmployeeName"
) AS "Top2009Sales";