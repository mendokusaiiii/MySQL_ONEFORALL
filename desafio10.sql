SELECT
    mus.musicas_nome AS nome,
    COUNT(re.musica_id) AS reproducoes
FROM musicas as mus
INNER JOIN reproducoes AS re ON mus.musica_id = re.musica_id
INNER JOIN usuario AS usuario ON usuario.usuario_id = re.usuario_id
INNER JOIN planos AS plan ON plan.plano_id = usuario.plano_id
WHERE plan.tipo_plano = 'gratuito' OR plan.tipo_plano = 'pessoal'
GROUP BY mus.musicas_nome
ORDER BY mus.musicas_nome;
