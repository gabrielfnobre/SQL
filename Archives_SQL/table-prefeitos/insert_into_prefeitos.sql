
-- INSERÇÃO DOS PREFEITOS NA TABELA PREFEITOS:

-- Aqui temos a simples inserção dos prefeitos na tabela prefeitos, caso deseje ver
-- mais detalhes sobre o uso de INSERT veja os arquivos:
--      * insert_cities_with_select_table_cidades.sql
--      * insert_estados.sql
--      * insert_on_autoincrement_values.sql

INSERT INTO prefeitos           -- Note que podemos inserir valores nulos numa coluna
    (nome, cidade_id)           -- FK se não designamos ela como NOT NULL;
VALUES
    ('Rodrigo Neves', 2),
    ('Raquel Lyra', 3),
    ('Zenaldo Coutinho', null);

SELECT * FROM prefeitos;


INSERT INTO prefeitos       -- Note que valores NULL podem ser duplicados. Afinal, 
    (nome, cidade_id)       -- o valor NULL na verdade não é valor, é justamente a
VALUES                      -- falta de valor, por isso a duplicação funcional;
    ('Rafael Greca', null);

SELECT * FROM prefeitos;


INSERT INTO prefeitos       -- Note que a duplicação de valores realmente não é
    (nome, cidade_id)       -- permitida!
VALUES
    ('Rafael Greca', 3);