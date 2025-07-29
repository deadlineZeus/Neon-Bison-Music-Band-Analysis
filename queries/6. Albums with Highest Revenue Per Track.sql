-- Which albums have the highest revenue per track?

SELECT 
    al.title AS album_title,
    ar.name AS artist_name,
    COUNT(DISTINCT t.track_id) AS num_tracks,
    ROUND(SUM(il.unit_price * il.quantity)::numeric, 2) AS total_revenue,
    ROUND(SUM(il.unit_price * il.quantity)::numeric / COUNT(DISTINCT t.track_id), 2) AS revenue_per_track
FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id
JOIN track t ON al.album_id = t.album_id
JOIN invoice_line il ON t.track_id = il.track_id
GROUP BY al.album_id, al.title, ar.name
ORDER BY revenue_per_track DESC
LIMIT 10;
