-- Query 9 - Creative Addition: Min, Max and Avg File Sizes in MB of each Genre and No. of Albums from each Genre

SELECT g.GenreId, g.Name AS GenreName, 
	MIN(ROUND(t.bytes / 1024.0 / 1024.0, 2)) AS MinFileSize_MB, 
	ROUND(AVG(t.bytes / 1024.0 / 1024.0),2) AS AvgFileSize_MB, 
	MAX(ROUND(t.bytes / 1024.0 / 1024.0, 2)) AS MaxFileSize_MB,
	COUNT( DISTINCT al.AlbumId) AS AlbumCount
	FROM genres g
	INNER JOIN tracks t ON t.GenreId = g.GenreId
	INNER JOIN albums al ON al.AlbumId = t.AlbumId
	GROUP BY g.GenreId;