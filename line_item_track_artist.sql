SELECT i.InvoiceLineId AS "Invoice Line Id", t.Name AS "Track Name", t.Composer AS "Artist"
FROM InvoiceLine i, Track t
WHERE t.TrackId == i.TrackId
AND t.Composer IS NOT NULL
ORDER BY InvoiceLineId;