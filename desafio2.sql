SELECT 
    COUNT(DISTINCT mus.musica_id) AS cancoes,
    COUNT(DISTINCT aa.album_id) AS albuns,
    COUNT(DISTINCT a.artista_id) AS artistas

FROM SpotifyClone.musicas AS mus 
INNER JOIN album AS aa ON  mus.album_id = aa.album_id
INNER JOIN artistas AS a ON mus.artista_id = a.artista_id;
