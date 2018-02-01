SELECT e.FirstName || " " || e.LastName AS "Employee Name", e.Title, SUM(i.Total) AS "Total Sales"
FROM Employee e, Invoice i, Customer c
WHERE i.CustomerId == c.CustomerId
AND c.SupportRepId == e.EmployeeId
GROUP BY "Employee Name";