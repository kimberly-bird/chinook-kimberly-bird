SELECT i.InvoiceId, i.Total, s.FirstName || " " || s.LastName AS "Agent Full Name"
FROM Invoice i, Employee s, Customer c
WHERE i.CustomerId == c.CustomerId
AND c.SupportRepId == s.EmployeeId
ORDER BY "Agent Full Name";