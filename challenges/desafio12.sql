SELECT
	art.nome AS artista,
 CASE
		WHEN COUNT(c.nome) >= 5 THEN 'A'
        WHEN COUNT(c.nome) = 3 OR COUNT(c.nome) = 4 THEN 'B'
        WHEN COUNT(c.nome) = 1 OR COUNT(c.nome) = 2 THEN 'C'
        ELSE '-'
        END
    AS ranking
FROM SpotifyClone.favoritas AS f
INNER JOIN SpotifyClone.cancoes AS c
ON c.id_cancao = f.id_cancao
INNER JOIN SpotifyClone.albuns AS a
ON a.id_album = c.id_album
RIGHT JOIN SpotifyClone.artistas AS art
ON art.id_artista = a.id_artista
GROUP BY artista
ORDER BY COUNT(c.nome) DESC, artista;