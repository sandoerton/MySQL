USE SpotifyClone;

SELECT 
    usuarios.usuario,
    COUNT(historico_reproduzidas.musica_id) AS qtde_musicas_ouvidas,
    CAST(SUM(musicas.duracao) / 60 AS DECIMAL (5 , 2 )) AS total_minutes
FROM
    usuarios
        INNER JOIN
    historico_reproduzidas
        INNER JOIN
    musicas
WHERE
    usuarios.id = historico_reproduzidas.usuario_id
        AND historico_reproduzidas.musica_id = musicas.id
GROUP BY usuarios.usuario
ORDER BY usuarios.usuario;
