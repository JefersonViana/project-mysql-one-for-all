SELECT
  a.nome AS album,
  COUNT(a.id_artista) AS favoritadas
FROM SpotifyClone.favoritas AS f
INNER JOIN SpotifyClone.cancoes AS c
ON c.id_cancao = f.id_cancao
INNER JOIN SpotifyClone.albuns AS a
ON c.id_album = a.id_album
GROUP BY a.nome, album
ORDER BY favoritadas DESC, album
LIMIT 3;