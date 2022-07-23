USE SpotifyClone;

SELECT 
    COUNT(historico_reproduzidas.usuario_id)
    AS quantidade_musicas_no_historico
FROM
    usuarios
        INNER JOIN
    historico_reproduzidas
WHERE
    usuarios.id = historico_reproduzidas.usuario_id
        AND usuarios.usuario = 'Bill';
        