SELECT InvoiceId, COUNT(InvoiceLineId) AS "Number of invoices"
FROM InvoiceLine
GROUP BY InvoiceId;