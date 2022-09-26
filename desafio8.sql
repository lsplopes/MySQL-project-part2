SELECT
	ar.artist_name AS artista,
    al.album_name AS album
FROM SpotifyClone.albums AS al
INNER JOIN SpotifyClone.artist AS ar
	ON ar.artist_id = al.artist_id
WHERE ar.artist_name LIKE 'Elis Regina'
ORDER BY album; 