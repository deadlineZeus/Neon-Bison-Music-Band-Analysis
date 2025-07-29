-- Tracks Purchased Most Number of Times

SELECT 
    t.name AS track_name,
    COUNT(il.invoice_line_id) AS times_purchased
FROM track t
JOIN invoice_line il ON t.track_id = il.track_id
GROUP BY t.track_id, t.name
ORDER BY times_purchased DESC
LIMIT 10;