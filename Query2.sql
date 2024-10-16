-- Query 2 - names of each album and the artist who created it

SELECT al.Title AS Album, ar.Name AS Artist 
    FROM albums al 
    INNER JOIN artists ar 
    ON al.ArtistId = ar.ArtistId
    WHERE al.Title IS NOT NULL
    AND ar.Name IS NOT NULL;