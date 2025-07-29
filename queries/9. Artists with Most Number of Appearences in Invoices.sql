-- Which artist's music gets bundled together the most in the same invoices?

SELECT 
    ar.name AS artist_name,
    COUNT(DISTINCT il.invoice_id) AS invoice_count,
    COUNT(il.invoice_line_id) AS total_tracks_sold,
    ROUND(COUNT(il.invoice_line_id) * 1.0 / COUNT(DISTINCT il.invoice_id), 2) AS avg_tracks_per_invoice
FROM invoice_line il
JOIN track t ON il.track_id = t.track_id
JOIN album al ON t.album_id = al.album_id
JOIN artist ar ON al.artist_id = ar.artist_id
GROUP BY ar.artist_id, ar.name
ORDER BY invoice_count DESC
LIMIT 10;
