-- Which artists generate the highest total revenue?

SELECT 
    ar.name AS artist_name,
    ROUND(SUM(il.unit_price * il.quantity)::numeric, 2) AS total_revenue
FROM artist ar
JOIN album a ON ar.artist_id = a.artist_id
JOIN track t ON a.album_id = t.album_id
JOIN invoice_line il ON t.track_id = il.track_id
GROUP BY ar.artist_id, ar.name
ORDER BY total_revenue DESC
LIMIT 10;
