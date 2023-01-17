SELECT
    COUNT(DISTINCT can.musica_id) AS cancoes,
    COUNT(DISTINCT a.artista_id) AS artistas,
    COUNT(DISTINCT al.album_id) AS albuns
FROM SpotifyClone.musicas AS can
INNER JOIN SpotifyClone.artista AS a
ON can.artista_id = a.artista_id
INNER JOIN SpotifyClone.album AS al
ON can.album_id = al.album_id;
