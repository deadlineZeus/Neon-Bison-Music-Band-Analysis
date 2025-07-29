-- Who is the best customer?

WITH customer_totals AS (
    SELECT 
        customer_id,
        SUM(total) AS total_spent
    FROM invoice
    GROUP BY customer_id
    ORDER BY total_spent DESC
    LIMIT 1
)
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    ct.total_spent
FROM customer_totals ct
JOIN customer c ON c.customer_id = ct.customer_id;
