
-- INSERIR CIDADES USANDO SELECT

-- Aqui temos um exemplo de como usar o select durante a inserção, o uso de select é essencial para
-- quando desejamos fazer inserções em colunas que usam chave estrangeira. Veja alguns exemplos...

INSERT INTO cidades (nome, area, estado_id) -- Aqui temo um exemplo de inserção comum, note que es-
VALUES('Campinas', 795, 31);                -- estamos fazendo uma inserção de chave estrangeira em
                                            -- "estado_id", note que inserimos o valor de id errado
                                            -- o id correto deveria ser o 44, mas erroneamente in-
                                            -- serimos o 31, isso ilustra como pode ser errado in-
                                            -- serir chave estrangeira na mão.

INSERT INTO cidades (nome, area, estado_id)                                     -- Aqui já temos um 
VALUES('Niterói', 133.9, (SELECT id FROM estados WHERE sigla = 'RJ')),          -- exemplo usando o
    ('Caruaru', 920.6, (SELECT id FROM estados WHERE sigla = 'PE')),            -- select para bus-
    ('Juazeiro do Norte', 248.2, (SELECT id FROM estados WHERE sigla = 'CE'));  -- car os estados 
                                                                                -- pelas siglas, o 
                                                                                -- que é bem mais 
                                                                                -- fácil e evita 
                                                                                -- erros de chave
                                                                                -- estrangeira.

UPDATE cidades SET estado_id = (SELECT id FROM estados WHERE sigla = 'SP')  -- Aqui fizemos o con-
WHERE nome = 'Campinas';                                                    -- serto usando o se-
                                                                            -- lect para buscar a
                                                                            -- chave estrangeira
                                                                            -- pela sigla...

select * from `cidades`;
select * from estados;