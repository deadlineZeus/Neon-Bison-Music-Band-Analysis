-- Find the Email, first name, last nameand genre of all the Rock music listeners 
-- Make sure the emails are in a sorted order starting with A

SELECT DISTINCT customer.first_name, customer.last_name, customer.email
FROM customer JOIN invoice ON customer.customer_id = invoice.customer_id
JOIN invoice_line ON invoice.invoice_id = invoice_line.invoice_id
JOIN track ON invoice_line.track_id = track.track_id
WHERE track.track_id in (
						SELECT track.track_id
						FROM track JOIN GENRE
						ON track.genre_id = genre.genre_id
						WHERE genre.name LIKE 'Rock'
						)
ORDER BY customer.email;