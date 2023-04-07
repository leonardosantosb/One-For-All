SELECT MIN(P.valor_plano) AS faturamento_minimo, 
	MAX(P.valor_plano) AS faturamento_maximo, 
	FORMAT(AVG(P.valor_plano),2) AS faturamento_medio, 
	SUM(P.valor_plano) AS faturamento_total
    
FROM 
	SpotifyClone.plano AS P 
		INNER JOIN 
	SpotifyClone.Usuario AS U ON P.idPlano = U.idPlano