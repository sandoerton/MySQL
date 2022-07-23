USE SpotifyClone;

SELECT 
	  COUNT(DISTINCT musicas.musica) AS cancoes,
    COUNT(DISTINCT artistas.artista) AS artistas,
    COUNT(DISTINCT albuns.album) AS albuns
FROM
    musicas
        INNER JOIN
    albuns
        INNER JOIN
    artistas
WHERE
    musicas.album_id = albuns.id
        AND albuns.artista_id = artistas.id;
