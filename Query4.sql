-- Query 4 - states have more than 10 unique customers

SELECT COUNT (c.CustomerId) AS TotalCustomers, c.State 
    FROM customers c 
    WHERE c.State IS NOT NULL 
    GROUP BY c.State
    HAVING COUNT (c.CustomerId) > 1
    ORDER BY c.State;