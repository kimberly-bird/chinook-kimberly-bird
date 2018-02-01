SELECT COUNT(InvoiceId) AS "Total Invoices From 2011"
FROM Invoice
WHERE InvoiceDate BETWEEN "2011-01-01" AND "2011-12-31";