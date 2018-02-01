SELECT a.Name AS "Artist Name", COUNT(il.Quantity) AS "Quantity"
FROM InvoiceLine il, Artist a, Track t, Album al
WHERE a.ArtistId = al.ArtistId
AND al.AlbumId = t.AlbumId
AND il.TrackId = t.TrackId
GROUP BY a.Name
ORDER BY Quantity DESC
LIMIT 3;