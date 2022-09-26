SELECT
	ar.artist_name AS artista,
    al.album_name AS album,
    COUNT(f.artist_id) AS seguidores
FROM SpotifyClone.artist AS ar
INNER JOIN SpotifyClone.albums AS al
	ON ar.artist_id = al.artist_id
INNER JOIN SpotifyClone.followers AS f
	ON ar.artist_id = f.artist_id
GROUP BY album, artista
ORDER BY seguidores DESC, ar.artist_name, al.album_name;