SELECT
	COUNT(*) AS musicas_no_historico
FROM SpotifyClone.historicos AS h
INNER JOIN SpotifyClone.usuarios AS u
ON u.id_usuario = h.id_usuario
WHERE u.nome = 'Barbara Liskov';