-- Find out most popular music genre for each country based on most number of Purchases

WITH Popular_Genre_By_Countries AS (
			SELECT COUNT(il.quantity) AS Purchases, c.country AS Country, g.name AS Genre_Name, g.genre_id,
			ROW_NUMBER() OVER (PARTITION BY c.country ORDER BY COUNT(il.quantity) DESC) As RowNum
			FROM genre g JOIN track t ON g.genre_id = t.genre_id
			JOIN invoice_line il ON il.track_id = t.track_id
			JOIN invoice i ON i.invoice_id = il.invoice_id
			JOIN customer c ON i.customer_id = c.customer_id
			GROUP BY 2,3,4
			ORDER BY 2 ASC, 1 DESC
	     )
SELECT Country, Genre_Name, Purchases FROM Popular_Genre_By_Countries WHERE RowNum = 1;