SELECT
  artistas.nome AS artista,
	albuns.nome AS album,
  COUNT(seguindo.id_usuario) AS pessoas_seguidoras
FROM SpotifyClone.albuns AS albuns
INNER JOIN SpotifyClone.artistas AS artistas
ON albuns.id_artista = artistas.id_artista
LEFT JOIN SpotifyClone.seguindo AS seguindo
ON seguindo.id_artista = artistas.id_artista
GROUP BY album, artista
ORDER BY  pessoas_seguidoras DESC, artista, album;