USE SpotifyClone;

SELECT 
    musicas.musica AS nome, COUNT(musicas.musica) AS reproducoes
FROM
    musicas
        INNER JOIN
    historico_reproduzidas
        INNER JOIN
    usuarios
        INNER JOIN
    contratos
        INNER JOIN
    planos
WHERE
    musicas.id = historico_reproduzidas.musica_id
        AND historico_reproduzidas.usuario_id = usuarios.id
        AND usuarios.id = contratos.usuario_id
        AND contratos.plano_id = planos.id
        AND planos.id IN (1 , 3)
GROUP BY musicas.musica;
