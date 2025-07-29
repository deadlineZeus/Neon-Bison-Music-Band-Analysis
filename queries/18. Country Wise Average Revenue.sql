-- What’s the average revenue per customer in each country?

SELECT 
    c.country,
    ROUND(SUM(i.total)::numeric / COUNT(DISTINCT c.customer_id), 2) AS avg_revenue_per_customer
FROM customer c
JOIN invoice i ON c.customer_id = i.customer_id
GROUP BY c.country
ORDER BY avg_revenue_per_customer DESC;
