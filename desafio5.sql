SELECT 
    mus.musicas_nome AS cancao, 
    COUNT(re.musica_id) AS reproducoes
FROM
    musicas AS mus
        INNER JOIN reproducoes AS re 
        ON re.musica_id = mus.musica_id
GROUP BY mus.musica_id
ORDER BY reproducoes DESC , cancao ASC
LIMIT 2;