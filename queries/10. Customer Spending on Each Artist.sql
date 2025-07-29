-- Find out how much did customers spent on each artist
-- Display customer name, artist name and total amount

WITH Customer_Artist_Spending AS (
									SELECT c.first_name || ' ' || c.last_name AS Customer_Name,
									ar.name AS Artist_Name, il.unit_price*il.quantity AS amount_spent

									FROM customer c JOIN invoice i ON c.customer_id = i.customer_id
									JOIN invoice_line il ON i.invoice_id = il.invoice_id
									JOIN track t ON il.track_id = t.track_id
									JOIN album a ON t.album_id = a.album_id
									JOIN artist ar ON a.artist_id = ar.artist_id
                                  )

SELECT CAS.Customer_Name, CAS.Artist_Name, SUM(CAS.amount_spent) AS Total_Spent
FROM Customer_Artist_Spending AS CAS
GROUP BY Customer_Name, Artist_Name
ORDER BY Customer_Name, Total_Spent DESC