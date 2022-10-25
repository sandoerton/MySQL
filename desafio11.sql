SELECT 
    musica AS nome_musica,

CASE
    WHEN musica LIKE 'Streets' THEN REPLACE(musica, 'Streets', 'Code Review'),
    WHEN musica LIKE 'Her Own' THEN REPLACE(musica, 'Her Own', 'Trybe') 
    END AS novo_nome
FROM
    musicas
WHERE
    musica LIKE '%Her Own'

-- https://www.codegrepper.com/code-examples/sql/update+part+of+a+string+in+mysql


CASE
        WHEN MAX(historico.data_e_hora) > '2021' THEN 'Usuário ativo'
        ELSE 'Usuário inativo'
    END AS condicao_usuario
