-- Find the top 10 artist names with most number of Rock songs

SELECT artist.artist_id, artist.name, COUNT(artist.artist_id) AS total_songs

FROM track JOIN album ON track.album_id = album.album_id
JOIN artist ON artist.artist_id = album.artist_id
JOIN genre ON track.genre_id = genre.genre_id

WHERE genre.name LIKE 'Rock'
GROUP BY artist.artist_id, artist.name
ORDER BY total_songs DESC
LIMIT 10;