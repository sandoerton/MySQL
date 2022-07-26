SELECT 
    artistas.artista,
    albuns.album,
    COUNT(favoritos.artista_id) AS seguidores
FROM
    favoritos
        INNER JOIN
    albuns ON favoritos.artista_id = albuns.artista_id
        INNER JOIN
    artistas ON albuns.artista_id = artistas.id
GROUP BY artistas.artista , albuns.album
ORDER BY seguidores DESC , artistas.artista , albuns.album;
