SELECT
  CASE
		WHEN u.idade > 60 THEN 'Maior de 60 anos'
    WHEN u.idade > 30 AND u.idade < 61 THEN 'Entre 31 e 60 anos'
    ELSE 'Até 30 anos'
    END
	AS faixa_etaria,
  COUNT(DISTINCT u.nome) AS total_pessoas_usuarias,
	COUNT(f.id_usuario) AS total_favoritadas
FROM SpotifyClone.favoritas AS f
RIGHT JOIN SpotifyClone.usuarios AS u
ON u.id_usuario = f.id_usuario
GROUP BY faixa_etaria
ORDER BY faixa_etaria;