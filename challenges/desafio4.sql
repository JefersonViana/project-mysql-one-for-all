SELECT
	u.nome AS pessoa_usuaria,
  IF(MAX(YEAR(h.data_reproducao)) >= 2021, 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM SpotifyClone.historicos AS h
INNER JOIN SpotifyClone.usuarios AS u
ON h.id_usuario = u.id_usuario
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;