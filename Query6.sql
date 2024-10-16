-- Query 6 - names of all artists who performed MPEG (video or audio) tracks in either the "Brazilian Music" or the "Grunge" playlists

SELECT ar.ArtistId, ar.Name AS ArtistName, mt.name AS TrackType, p.name AS PlaylistType FROM artists ar 
	INNER JOIN albums al ON ar.ArtistId = al.ArtistId
	INNER JOIN tracks t ON al.AlbumId = t.AlbumId
	INNER JOIN media_types mt ON mt.MediaTypeId = t.MediaTypeId
	INNER JOIN playlist_track pt ON t.TrackId = pt.TrackId
	INNER JOIN playlists p ON p.PlaylistId = pt.PlaylistId
	WHERE p.Name = 'Brazilian Music' OR p.Name = 'Grunge'
	AND mt.name LIKE '%MPEG%'
    AND ar.Name IS NOT NULL
    AND mt.name IS NOT NULL
    AND p.name IS NOT NULL
	GROUP BY ar.ArtistId;