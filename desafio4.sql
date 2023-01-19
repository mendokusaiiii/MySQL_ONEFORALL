SELECT 
    usuario_nome AS usuario,
    CASE
        WHEN MAX(YEAR(re.ultima_reproducao)) >= 2021 THEN 'Usuário ativo'
        ELSE 'Usuário inativo'
    END AS status_usuario
FROM
    usuario AS user
        INNER JOIN
    reproducoes AS re ON re.usuario_id = user.usuario_id
GROUP BY re.usuario_id
ORDER BY usuario_nome;