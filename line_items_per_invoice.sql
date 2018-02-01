SELECT InvoiceId, COUNT(InvoiceLineId) AS "Number Of Invoices"
FROM InvoiceLine
GROUP BY InvoiceId;