-- Query 9 - Creative Addition: Min, Max and Avg File Sizes in MB of each Genre and No. of Albums from each Genre
-- This query retrieves track information alongside the album and genre it belongs to. It calculates the file size of each track and shows the average, minimum, and maximum file sizes for all tracks within each genre.

SELECT g.GenreId, g.Name AS GenreType, t.TrackId, al.Title, t.Name AS TrackTitle,
    ROUND(t.bytes / 1024.0 / 1024.0, 2) AS FileSize_MB, 
    ROUND(AVG(t.bytes / 1024.0 / 1024.0) OVER (PARTITION BY g.GenreId), 2) AS AvgFileSizePerGenre_MB,
    MIN(ROUND(t.bytes / 1024.0 / 1024.0, 2)) OVER (PARTITION BY g.GenreId) AS MinFileSizePerGenre_MB,
    MAX(ROUND(t.bytes / 1024.0 / 1024.0, 2)) OVER (PARTITION BY g.GenreId) AS MaxFileSizePerGenre_MB
    FROM genres g
    INNER JOIN tracks t ON t.GenreId = g.GenreId
    INNER JOIN albums al ON t.AlbumId = al.AlbumId
    WHERE t.bytes IS NOT NULL
    ORDER BY g.GenreId, al.AlbumId, t.TrackId;