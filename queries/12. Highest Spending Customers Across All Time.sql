-- Which customers have spent the most across all time?

SELECT 
    c.first_name || ' ' || c.last_name AS customer_name,
    c.country,
    ROUND(SUM(i.total)::numeric, 2) AS total_spent
FROM customer c
JOIN invoice i ON c.customer_id = i.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name, c.country
ORDER BY total_spent DESC
LIMIT 5;
