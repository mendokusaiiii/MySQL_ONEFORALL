SELECT 
    usuario_nome AS usuario,
    COUNT(re.musica_id) AS qt_de_musicas_ouvidas,
    ROUND(SUM(duracao_musica / 60), 2) AS total_minutos
FROM SpotifyClone.usuario AS usuario
INNER JOIN reproducoes as re ON usuario.usuario_id = re.usuario_id
INNER JOIN musicas as mus ON mus.musica_id = re.musica_id
GROUP BY usuario_nome 
ORDER BY usuario_nome;
