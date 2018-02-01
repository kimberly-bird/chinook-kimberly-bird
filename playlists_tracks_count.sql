SELECT COUNT(pt.PlaylistId) AS "Number of Tracks on Playlist", p.Name AS "Playlist Name"
FROM PlaylistTrack pt, Playlist p
WHERE pt.PlaylistId == p.PlaylistId
GROUP BY p.Name;