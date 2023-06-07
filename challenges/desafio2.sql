SELECT
	COUNT(c.id_cancao) AS cancoes,
  COUNT(DISTINCT a.id_artista) AS artistas,
  COUNT(DISTINCT al.id_album) AS albuns
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.albuns AS al
ON al.id_album = c.id_album
INNER JOIN SpotifyClone.artistas AS a
ON a.id_artista = al.id_artista;