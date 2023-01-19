SELECT art.nome_artista as artista, alb.nome_album as album from album as alb
INNER JOIN artistas as art
ON alb.artista_id = art.artista_id
WHERE art.nome_artista = 'Elis Regina'