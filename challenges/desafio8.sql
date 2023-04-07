SELECT 
	A.nome_artista AS artista, 
	AL.nome_album AS album 
    
FROM 
	SpotifyClone.Artista AS A
		INNER JOIN 
	SpotifyClone.Album AS AL ON AL.idArtista = A.idArtista
	WHERE A.nome_artista = 'Elis Regina'
    ORDER BY album;