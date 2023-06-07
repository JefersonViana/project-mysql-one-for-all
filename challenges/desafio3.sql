SELECT
  u.nome AS pessoa_usuaria,
  COUNT(h.id_cancao) AS musicas_ouvidas,
  ROUND(SUM(c.duracao_segundos) / 60, 2) AS total_minutos
FROM SpotifyClone.usuarios u
INNER JOIN SpotifyClone.historicos h ON u.id_usuario = h.id_usuario
INNER JOIN SpotifyClone.cancoes c ON h.id_cancao = c.id_cancao
GROUP BY u.nome
ORDER BY u.nome ASC;