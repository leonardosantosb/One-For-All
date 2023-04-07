SELECT 
	A.nome_artista AS artista, 
	AL.nome_album AS album, 
	COUNT(S.idArtista) AS pessoas_seguidoras
    
FROM 
	SpotifyClone.Artista AS A
		INNER JOIN 
	SpotifyClone.Album AS AL ON AL.idArtista = A.idArtista
		INNER JOIN 
	SpotifyClone.seguindo AS S ON S.idArtista = A.idArtista
    GROUP BY A.nome_artista, AL.nome_album
    ORDER BY pessoas_seguidoras DESC, artista ASC, album ASC;