SELECT U.nome_cancoes AS cancao, COUNT(U.nome_cancoes) AS reproducoes 
    
FROM 
	SpotifyClone.Cancoes AS U 
		INNER JOIN 
	SpotifyClone.historico AS H ON U.idCancoes = H.idCancoes
	GROUP BY U.idCancoes
    ORDER BY reproducoes DESC, cancao ASC LIMIT 2;