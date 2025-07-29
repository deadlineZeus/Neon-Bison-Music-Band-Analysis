-- Find those songs whose milliseconds count is greater than the average of all the songs.
-- Return their names and their song length

SELECT name, milliseconds
FROM track
WHERE track.milliseconds > (
					SELECT AVG(milliseconds)
					FROM track
					)
ORDER BY milliseconds DESC;