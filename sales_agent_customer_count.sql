SELECT e.FirstName || " " || e.LastName AS "Sales Agent", COUNT(c.CustomerId) AS "Number of customers"
FROM Employee e, Customer c
WHERE c.SupportRepId == e.EmployeeId
GROUP BY "Sales Agent";