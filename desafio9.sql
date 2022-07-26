SELECT 
    COUNT(historico.usuario_id) AS quantidade_musicas_no_historico
FROM
    usuarios
        INNER JOIN
    historico ON usuarios.id = historico.usuario_id
WHERE
    usuarios.usuario = 'Bill';
        