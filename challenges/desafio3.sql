SELECT 
	(U.nome_pessoa_usuario) AS pessoa_usuaria, count(H.pessoa_usuaria_id) AS musicas_ouvidas, format(SUM(C.duracao_seg/60),2)  AS total_minutos 
    
FROM 
	SpotifyClone.Usuario AS U 
		INNER JOIN 
	SpotifyClone.historico AS H ON U.pessoa_usuaria_id = H.pessoa_usuaria_id
		INNER JOIN 
	SpotifyClone.Cancoes AS C on H.idCancoes = C.idCancoes
	
    GROUP BY U.pessoa_usuaria_id
    ORDER BY pessoa_usuaria asc;