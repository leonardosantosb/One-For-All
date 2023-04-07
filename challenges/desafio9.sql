SELECT 
	COUNT(U.pessoa_usuaria_id) AS musicas_no_historico
    
FROM 
	SpotifyClone.Usuario AS U 
		INNER JOIN 
	SpotifyClone.historico AS H ON U.pessoa_usuaria_id = H.pessoa_usuaria_id
   
   WHERE U.nome_pessoa_usuario = 'Barbara Liskov'