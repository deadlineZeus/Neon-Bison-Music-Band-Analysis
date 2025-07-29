-- Which music genres bring in the highest revenue overall?

SELECT 
    g.name AS genre_name,
    ROUND(SUM(il.unit_price * il.quantity)::numeric, 2) AS total_revenue
FROM genre g
JOIN track t ON g.genre_id = t.genre_id
JOIN invoice_line il ON t.track_id = il.track_id
GROUP BY g.name
ORDER BY total_revenue DESC;
