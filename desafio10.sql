SELECT
	s.song_name AS nome,
    COUNT(h.song_id) AS reproducoes
FROM SpotifyClone.history AS h
INNER JOIN SpotifyClone.songs AS s
	ON s.song_id = h.song_id
INNER JOIN SpotifyClone.users AS u
	ON h.user_id = u.user_id
INNER JOIN SpotifyClone.plans AS p
	ON p.plan_id = u.plan_id
WHERE p.plan = 'gratuito' OR p.plan = 'pessoal'
GROUP BY s.song_name
ORDER BY nome;