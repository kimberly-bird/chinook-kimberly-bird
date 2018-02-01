SELECT c.FirstName || " " || c.LastName AS "Full Name", i.InvoiceId, i.InvoiceDate, i.BillingCountry
FROM Customer c, Invoice i
WHERE BillingCountry == "Brazil";
