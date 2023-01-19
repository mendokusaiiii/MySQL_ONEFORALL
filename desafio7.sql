SELECT 
    art.nome_artista AS artista, a.nome_album AS album, COUNT(s.usuario_id) as seguidores
FROM
    artistas AS art
        INNER JOIN
    album AS a ON art.artista_id = a.artista_id
        INNER JOIN
    seguindo AS s ON s.artista_id = art.artista_id
GROUP BY art.nome_artista, a.nome_album
ORDER BY seguidores DESC, artista ASC, album ASC