USE SpotifyClone;

SELECT 
    musicas.musica AS cancao,
    COUNT(historico_reproduzidas.musica_id) AS reproducoes
FROM
    musicas
        INNER JOIN
    historico_reproduzidas
WHERE
    musicas.id = historico_reproduzidas.musica_id
GROUP BY historico_reproduzidas.musica_id
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
