SELECT t.Name AS "Track Name", a.Title AS "Album Title", m.Name AS "Media Type", g.Name AS "Genre"
FROM Track t, Album a, MediaType m, Genre g
WHERE t.AlbumId == a.AlbumId
AND t.MediaTypeId == m.MediaTypeId
AND t.GenreId == g.GenreId
GROUP BY a.Title;