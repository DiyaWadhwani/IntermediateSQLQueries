-- Query 8

-- Total length of each playlist in hours
SELECT p.PlaylistId, p.Name AS PlaylistType, SUM(t.Milliseconds/3600000.0)AS TrackTimeInHrs,  COUNT(t.TrackId) AS NumOfTracks FROM playlists p
	INNER JOIN playlist_track pt ON p.PlaylistId = pt.PlaylistId
	INNER JOIN tracks t ON t.trackId = pt.PlaylistId
	GROUP BY t.TrackId;

-- Playlist id and name of only those playlists that are longer than 2 hours
SELECT p.PlaylistId, p.Name AS PlaylistType, ROUND(SUM(t.Milliseconds/3600000.0),2) AS TrackTimeInHrs FROM playlists p
	INNER JOIN playlist_track pt ON p.PlaylistId = pt.PlaylistId
	INNER JOIN tracks t ON t.trackId = pt.PlaylistId
    WHERE p.PlaylistId IS NOT NULL
    AND p.Name IS NOT NULL
    AND t.Milliseconds IS NOT NULL
	GROUP BY t.TrackId
	HAVING TrackTimeInHrs > 2;