SELECT 
    musicas.musica AS nome, COUNT(musicas.musica) AS reproducoes
FROM
    musicas
        INNER JOIN
    historico ON musicas.id = historico.musica_id
        INNER JOIN
    usuarios ON historico.usuario_id = usuarios.id
        INNER JOIN
    planos ON usuarios.plano_id = planos.id
WHERE
    planos.id IN (1 , 3)
GROUP BY musicas.musica;
