SELECT c.FirstName || " " || c.LastName AS "Customer Full Name", c.Country, s.FirstName || " " || s.LastName AS "Sales Agent Full Name", i.Total
FROM Invoice i, Customer c, Employee s
WHERE i.CustomerId == c.CustomerId
AND c.SupportRepId == s.EmployeeId
ORDER BY "Customer Full Name"