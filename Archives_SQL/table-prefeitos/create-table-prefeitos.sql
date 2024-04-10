
-- CRIAÇÃO DA TABELA PREFEITOS

-- Na tabela prefeitos, gostaríamos de mostrar como geralmente é feita a criação de uma
-- relação 1:1.

-- Quando criamos relações 1:1 nas nossas tabelas, devemos nos fazer a seguinte pergun-
-- ta: "É realmente necessários criar uma tabela para fazer esse tipo de relação?" 

-- Essa pergunta é totalmente justa, pois muitas vezes uma relação 1:1 pode ser total-
-- mente desnecessária se essa tabela tiver apenas 1 único dado ou poucos dados que po-
-- deriam muito bem estar em uma única tabela. Pois a criação de 2 tabelas diferentes 
-- só iria acarretar na necessidade de um maior poder de processamento, afinal, uma 
-- consulta JOIN entre tabelas acarreta em maior poder de processamento, o que iria 
-- deixar as nossas consultas mais pesadas desnecessariamente.

CREATE TABLE IF NOT EXISTS prefeitos (                  -- aqui temos a criação da nos-
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,            -- sa tabela, note que a relação
    nome VARCHAR(255) NOT NULL,                         -- 1:1 é gerada ao vincularmos a
    cidade_id INT UNSIGNED,                             -- coluna "cidade_id" com a co-
    PRIMARY KEY (id),                                   -- luna "id" da tabela cidades
    UNIQUE KEY (cidade_id),                             -- como uma chave estrangeira e
    FOREIGN KEY (cidade_id) REFERENCES cidades (id)     -- além disso como UNIQUE KEY
);                                                      -- o que faz dela uma chave úni-
                                                        -- ca que não poderá ser dupli-
                                                        -- cada.

SELECT * FROM prefeitos;