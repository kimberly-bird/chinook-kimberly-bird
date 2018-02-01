SELECT m.Name AS "Media Type", COUNT(il.Quantity) AS "Quantity"
FROM InvoiceLine il, Track t, MediaType m
WHERE m.MediaTypeId = t.MediaTypeId
AND il.TrackId = t.TrackId
GROUP BY m.Name
ORDER BY Quantity DESC
LIMIT 1;