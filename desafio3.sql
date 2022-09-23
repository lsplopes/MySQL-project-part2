SELECT
	u.user AS usuario,
  COUNT(h.song_id) AS qt_de_musicas_ouvidas,
  ROUND((SUM(s.song_seconds))/60, 2) AS total_minutos
FROM SpotifyClone.history AS h
LEFT JOIN SpotifyClone.users AS u
	ON h.user_id = u.user_id
INNER JOIN SpotifyClone.songs as s
	ON h.song_id = s.song_id
GROUP BY u.user
ORDER BY u.user;