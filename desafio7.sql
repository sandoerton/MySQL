USE SpotifyClone;

SELECT 
    artistas.artista,
    albuns.album,
    COUNT(artista_favorito.artista_id) AS seguidores
FROM
    artista_favorito
        INNER JOIN
    albuns
        INNER JOIN
    artistas
WHERE
    artista_favorito.artista_id = albuns.artista_id
        AND albuns.artista_id = artistas.id
GROUP BY artistas.artista, albuns.album
ORDER BY seguidores DESC, artistas.artista , albuns.album;
