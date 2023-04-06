SELECT 
	count(distinct(C.nome_cancoes)) AS cancoes, count(distinct(AR.nome_artista)) AS artistas, count(distinct(A.nome_album)) AS albuns 
FROM 
	SpotifyClone.Cancoes AS C 
		INNER JOIN 
	SpotifyClone.Album AS A ON C.album_id = A.album_id
		INNER JOIN 
	SpotifyClone.Artista AS AR on A.idArtista = AR.idArtista