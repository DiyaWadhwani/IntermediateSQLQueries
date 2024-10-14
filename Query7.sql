-- Query 7 - artists that published at least 10 MPEG track

SELECT COUNT(*) FROM
	(SELECT COUNT(DISTINCT ar.ArtistId), * FROM artists ar 
		INNER JOIN albums al ON al.ArtistId = ar.ArtistId
		INNER JOIN tracks t ON t.AlbumId = al.AlbumId
		INNER JOIN media_types mt ON mt.MediaTypeId = t.MediaTypeId
		WHERE mt.name LIKE '%MPEG%'
		GROUP BY ar.ArtistId
		HAVING COUNT(t.TrackId) >= 10);