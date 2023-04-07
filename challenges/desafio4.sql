SELECT 
	(U.nome_pessoa_usuario) AS pessoa_usuaria, IF(MAX(H.data_reproducao) > '2020-12-31 23:59:59', 'Ativa', 'Inativa') AS status_pessoa_usuaria
    
FROM 
	SpotifyClone.Usuario AS U 
		INNER JOIN 
	SpotifyClone.historico AS H ON U.pessoa_usuaria_id = H.pessoa_usuaria_id
    GROUP BY U.pessoa_usuaria_id
    ORDER BY pessoa_usuaria asc;