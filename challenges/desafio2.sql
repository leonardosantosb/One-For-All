SELECT 
	COUNT(DISTINCT(C.nome_cancoes)) AS cancoes, COUNT(DISTINCT(AR.nome_artista)) AS artistas, COUNT(DISTINCT(A.nome_album)) AS albuns 
FROM 
	SpotifyClone.Cancoes AS C 
		INNER JOIN 
	SpotifyClone.Album AS A ON C.album_id = A.album_id
		INNER JOIN 
	SpotifyClone.Artista AS AR on A.idArtista = AR.idArtista