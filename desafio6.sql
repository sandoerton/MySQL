SELECT 
    CAST(MIN(valor) AS DECIMAL (4 , 2 )) AS faturamento_minimo,
    CAST(MAX(valor) AS DECIMAL (4 , 2 )) AS faturamento_maximo,
    CAST(AVG(valor) AS DECIMAL (4 , 2 )) AS faturamento_medio,
    CAST(SUM(valor) AS DECIMAL (4 , 2 )) AS faturamento_total
FROM
    planos
        INNER JOIN
    usuarios ON planos.id = usuarios.plano_id;
