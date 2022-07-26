SELECT 
    artistas.artista, albuns.album
FROM
    artistas
        INNER JOIN
    albuns ON artistas.id = albuns.artista_id
WHERE
    artistas.artista = 'Walter Phoenix';
