SELECT
	c.nome AS cancao,
	COUNT(h.id_cancao) AS reproducoes
FROM SpotifyClone.historicos AS h
INNER JOIN SpotifyClone.cancoes AS c
ON c.id_cancao = h.id_cancao
GROUP BY c.nome
ORDER BY reproducoes DESC, cancao
LIMIT 2;