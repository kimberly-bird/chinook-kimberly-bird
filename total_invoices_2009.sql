SELECT COUNT(InvoiceId) AS "Total Invoices From 2009"
FROM Invoice
WHERE InvoiceDate BETWEEN "2009-01-01" AND "2009-12-31";