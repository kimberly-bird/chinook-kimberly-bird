SELECT MAX(TopSales.EmployeeName) AS "EmployeeName", MAX(TopSales.Sales) AS "Sales"
FROM (
	SELECT e.FirstName || " " || e.LastName AS "EmployeeName", SUM(i.Total) AS "Sales"
	FROM Employee e, Invoice i, Customer c
	WHERE i.CustomerId = c.CustomerId
	AND c.SupportRepId = e.EmployeeId
	GROUP BY EmployeeName
) AS "TopSales";