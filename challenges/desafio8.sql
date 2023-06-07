SELECT
	a.nome AS artista,
	al.nome AS album
FROM SpotifyClone.albuns AS al
INNER JOIN SpotifyClone.artistas AS a
ON a.id_artista = al.id_artista
WHERE a.nome = 'Elis Regina';