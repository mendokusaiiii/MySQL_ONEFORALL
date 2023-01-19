SELECT 
    MIN(plan.valor) AS faturamento_minimo,
    MAX(plan.valor) AS faturamento_maximo,
    ROUND(AVG(plan.valor), 2) AS faturamento_medio,
    SUM(plan.valor) AS faturamento_total
FROM
    planos AS plan
        INNER JOIN
    usuario AS user ON plan.plano_id = user.plano_id;