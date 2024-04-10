
-- DIFERENTES MANEIRAS DE USAR JOIN:

-- Neste arquivo vamos ver diferentes maneiras de usar consultas com JOIN, aplicando
-- aquilo que aprendemos nas aulas de fundamentos sobre os diferentes tipos de JOIN.

-- Vamos ver como usar INNER JOIN, OUTER JOIN, LEFT e RIGHT OUTER JOIN e por fim 
-- FULL JOIN. Vejamos alguns exemplos práticos...

SELECT * FROM cidades;      -- Primeiro veja como estão as tabelas cidades e prefei-
SELECT * FROM prefeitos;    -- tos para entender como estão as nossas tabelas.


SELECT c.id as id_cidade,               -- Aqui temos o exemplo clássico de um INNER
        c.nome as nome_cidade,          -- JOIN entre as tabelas, onde vamos pegar
        c.estado_id,                    -- somente os valores que existerem em ambas
        c.area,                         -- as tabelas.
        p.id as id_prefeito,            -- Lembrando que esses valores estão rela-
        p.nome as nome_prefeito,        -- cionados por chave estrangeira.
        p.cidade_id
FROM cidades c INNER JOIN prefeitos p 
ON c.id = p.cidade_id;


SELECT c.id as id_cidade,               -- Aqui temos o exemplo de um OUTER JOIN,  
        c.nome as nome_cidade,          -- onde queremos visualizar somente os valo-
        c.area,                         -- res que não existem em ambas tabelas.
        p.id as id_prefeito,            -- Note que não existe no MySQL um comando 
        p.nome as nome_prefeito,        -- OUTER, para pegar então os valores que
        p.cidade_id                     -- estão nulos na outra tabela, temos que
FROM cidades c LEFT JOIN prefeitos p    -- usar uma cláusula WHERE para pegar todos
ON c.id = p.cidade_id                   -- os valores nulos na tabela da direita e
WHERE p.cidade_id IS NULL;              -- usar um LEFT OUTER JOIN para pegar todos
                                        -- todos os valores da tabela da esquerda
                                        -- que são OUTER. Note que não estamos 
                                        -- usando a palavra reservada OUTER, isso é
                                        -- porque o SQL já entende que ao usar LEFT
                                        -- ou RIGHT JOIN, mesmo que não tenhamos 
                                        -- colocado a palavra reservada OUTER, ele
                                        -- já entende que é uma OUTER JOIN.


SELECT c.id as id_cidade,               -- Aqui temos um exemplo de utilização de 
        c.nome as nome_cidade,          -- de uma LEFT OUTER JOIN, veja que só vi-
        c.estado_id,                    -- sualizamos os valores OUTER da tabela
        c.area,                         -- da esquerda que no caso é a tabela ci-
        p.id as id_prefeito,            -- dades, junto aos valores INNER de ambas
        p.nome as nome_prefeito,        -- as tabelas.
        p.cidade_id                     -- Veja que também que não há a necessida-
FROM cidades c LEFT JOIN prefeitos p    -- de de usar a palavra reservada OUTER.
ON c.id = p.cidade_id;


SELECT c.id as id_cidade,               -- Aqui temos um exemplo de utilização de 
        c.nome as nome_cidade,          -- de uma RIGHT OUTER JOIN, veja que só vi-
        c.estado_id,                    -- sualizamos os valores OUTER da tabela
        c.area,                         -- da direita, que no caso é a tabela pre-
        p.id as id_prefeito,            -- feitos, junto aos valores INNER de ambas
        p.nome as nome_prefeito,        -- as tabelas.
        p.cidade_id                     -- Veja que também que não há a necessida-
FROM cidades c RIGHT JOIN prefeitos p   -- de de usar a palavra reservada OUTER.
ON c.id = p.cidade_id;


SELECT c.id as id_cidade,               -- Aqui temos um exemplo de como fazer uma
        c.nome as nome_cidade,          -- FULL JOIN entre as tabelas.
        c.estado_id,                    -- Note que não temos a palavra reservada 
        c.area,                         -- FULL JOIN no MySQL (como temos em outros
        p.id as id_prefeito,            -- SGBDs), mas para simular um FULL JOIN 
        p.nome as nome_prefeito,        -- fazemos a união de um LEFT OUTER JOIN
        p.cidade_id                     -- com um RIGHT OUTER JOIN por através da
FROM cidades c LEFT JOIN prefeitos p    -- palavra reservada "UNION".
ON c.id = p.cidade_id                   -- A palavra reservada "UNION" nos traz co-
UNION                                   -- mo resposta a união de 2 JOIN sem dupli-
SELECT c.id as id_cidade,               -- cá-los!
        c.nome as nome_cidade,          -- A tabela que estiver na esquerda apare-
        c.estado_id,                    -- cerá primeiro e os registros da tabela 
        c.area,                         -- que estiver na direita aparecerão depois.
        p.id as id_prefeito,
        p.nome as nome_prefeito,
        p.cidade_id
FROM cidades c RIGHT JOIN prefeitos p
ON c.id = p.cidade_id;


SELECT c.id as id_cidade,               -- Aqui já temos um FULL JOIN com os valo 
        c.nome as nome_cidade,          -- res duplicados entre as tabelas. Isso 
        c.estado_id,                    -- acontece quanto usamos a palavra reser-
        c.area,                         -- vada "UNION ALL", o "UNION ALL" diferen-
        p.id as id_prefeito,            -- te do "UNION" trará uma consulta total
        p.nome as nome_prefeito,        -- entre os JOIN, não importa se ele vai 
        p.cidade_id                     -- duplicar os valores.
FROM cidades c LEFT JOIN prefeitos p
ON c.id = p.cidade_id
UNION ALL
SELECT c.id as id_cidade,
        c.nome as nome_cidade,
        c.estado_id,
        c.area,
        p.id as id_prefeito,
        p.nome as nome_prefeito,
        p.cidade_id
FROM cidades c RIGHT JOIN prefeitos p
ON c.id = p.cidade_id;