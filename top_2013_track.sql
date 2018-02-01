SELECT MAX(most.TrackName) AS "TrackName",  MAX(most.Quantity) AS "Quantity"
FROM (
	SELECT t.Name AS "TrackName", COUNT(il.Quantity) AS "Quantity"
	FROM InvoiceLine il, Invoice i, Track t
	WHERE il.InvoiceId = i.InvoiceId
	AND il.TrackId = t.TrackId
	AND i.InvoiceDate BETWEEN "2013-01-01" AND "2013-12-31"
	GROUP BY t.Name
) AS "most"