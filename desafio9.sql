SELECT
    COUNT(re.musica_id) AS quantidade_musicas_no_historico
FROM 
    reproducoes AS re
    INNER JOIN
    usuario ON usuario.usuario_id = re.usuario_id
GROUP BY usuario.usuario_nome
HAVING usuario_nome = 'Barbara Liskov';
