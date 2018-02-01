SELECT t.Name AS "TrackName", COUNT(il.Quantity) AS "Quantity"
FROM InvoiceLine il, Invoice i, Track t
WHERE il.InvoiceId = i.InvoiceId
AND il.TrackId = t.TrackId
GROUP BY t.Name
ORDER BY Quantity DESC
LIMIT 5;