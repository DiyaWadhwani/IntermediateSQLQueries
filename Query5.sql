-- Query 5 - names of the artists who made an album containing the substring "symphony" in the album title

SELECT al.Title AS Album, ar.Name AS Artist 
    FROM albums al 
    INNER JOIN artists ar 
    ON al.ArtistId = ar.ArtistId 
    WHERE al.Title LIKE '%symphony%'
    AND al.Title IS NOT NULL;