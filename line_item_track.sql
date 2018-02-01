SELECT i.InvoiceLineId AS "Invoice Line Id", t.Name AS "Track Name"
FROM InvoiceLine i, Track t
WHERE t.TrackId == i.TrackId
ORDER BY InvoiceLineId;