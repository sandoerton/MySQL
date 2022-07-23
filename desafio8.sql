USE SpotifyClone;

SELECT 
    artistas.artista, albuns.album
FROM
    artistas
        INNER JOIN
    albuns
WHERE
    artistas.id = albuns.artista_id
        AND artistas.artista = 'Walter Phoenix';
