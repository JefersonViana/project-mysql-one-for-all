SELECT
	MIN(p.valor) AS faturamento_minimo,
    MAX(p.valor) AS faturamento_maximo,
    ROUND(AVG(p.valor), 2) AS faturamento_medio,
    SUM(p.valor) AS faturamento_total
FROM SpotifyClone.planos AS p
INNER JOIN SpotifyClone.usuarios AS u
ON u.id_plano = p.id_plano;