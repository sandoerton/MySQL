SELECT 
    usuarios.usuario,
    COUNT(historico.musica_id) AS qtde_musicas_ouvidas,
    CAST(SUM(musicas.duracao) / 60 AS DECIMAL (4 , 2 )) AS total_minutos
FROM
    usuarios
        INNER JOIN
    historico ON usuarios.id = historico.usuario_id
        INNER JOIN
    musicas ON historico.musica_id = musicas.id
GROUP BY usuarios.usuario
ORDER BY usuarios.usuario;
