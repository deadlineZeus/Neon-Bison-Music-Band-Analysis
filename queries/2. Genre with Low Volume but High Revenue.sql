-- Which genres generate high revenue but low volume (i.e., high unit price)?
SELECT 
    g.name AS genre_name,
    SUM(il.unit_price * il.quantity) AS total_revenue,
    SUM(il.quantity) AS total_units_sold,
    ROUND((SUM(il.unit_price * il.quantity) / SUM(il.quantity))::numeric, 2) AS avg_revenue_per_unit
FROM genre g
JOIN track t ON g.genre_id = t.genre_id
JOIN invoice_line il ON t.track_id = il.track_id
GROUP BY g.genre_id, g.name
ORDER BY avg_revenue_per_unit DESC;
