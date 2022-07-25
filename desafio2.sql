SELECT 
    COUNT(DISTINCT musicas.musica) AS cancoes,
    COUNT(DISTINCT artistas.artista) AS artistas,
    COUNT(DISTINCT albuns.album) AS albuns
FROM
    musicas
        INNER JOIN
    albuns ON musicas.album_id = albuns.id
        INNER JOIN
    artistas ON albuns.artista_id = artistas.id;
