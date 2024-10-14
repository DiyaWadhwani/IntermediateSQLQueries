-- Query 3 - total number of unique customers for each state, ordered alphabetically by state

SELECT c.State, COUNT (c.CustomerId) AS TotalCustomers
    FROM customers c 
    WHERE c.State IS NOT NULL 
    GROUP BY c.State
    ORDER BY c.State;
