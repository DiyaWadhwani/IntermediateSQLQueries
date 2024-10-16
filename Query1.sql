-- Query 1 - last Names and emails of all customers who have made a purchase in store

SELECT c.LastName, c.Email 
    FROM invoices i 
    INNER JOIN customers c ON c.CustomerId = i.CustomerId 
    WHERE c.FirstName IS NOT NULL 
    AND c.LastName IS NOT NULL
    AND c.Email IS NOT NULL
    GROUP BY c.CustomerId;