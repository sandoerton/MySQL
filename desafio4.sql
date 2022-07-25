SELECT 
    usuarios.usuario,
    CASE
        WHEN MAX(historico.data_e_hora) > '2021' THEN 'Usuário ativo'
        ELSE 'Usuário inativo'
    END AS condicao_usuario
FROM
    usuarios
        INNER JOIN
    historico ON usuarios.id = historico.usuario_id
GROUP BY usuarios.usuario
ORDER BY usuarios.usuario;

-- https://www.devmedia.com.br/forum/select-com-coluna-condicional/28849
