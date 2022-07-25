SELECT 
    musicas.musica AS cancao,
    COUNT(historico.musica_id) AS reproducoes
FROM
    musicas
        INNER JOIN
    historico ON musicas.id = historico.musica_id
GROUP BY historico.musica_id
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
