
-- CRIAÇÃO DAS TABELAS "EMPRESAS" E "EMPRESAS UNIDADES"

-- Como gostaríamos de relembrar, para gerar uma relação N:M no MySQL entre as tabelas
-- "empresas" e "cidades" temos que criar uma 3ª tabela chamada "empresas_unidades" pa-
-- ra que uma relação desse tipo possa existir.
-- Vamos ver como fazer isso na prática...

CREATE TABLE IF NOT EXISTS empresas (           -- Aqui temos a criação da tabela em-
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,    -- empresas, como já estamos acostuma-
    nome VARCHAR(255) NOT NULL,                 -- dos.
    cnpj VARCHAR(15) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY (cnpj)
);

-- CRIAÇÃO DA TABELA ENTRE EMPRESA_UNIDADES:
CREATE TABLE IF NOT EXISTS empresas_unidades (  -- E aqui temos a criação da tabela 
    empresa_id INT UNSIGNED NOT NULL,           -- "empresas_unidades", note que essa
    cidade_id INT UNSIGNED NOT NULL,            -- irá receber os id das tabelas "em-
    sede TINYINT(1) NOT NULL,                   -- presas" e "cidades" e além disso 
    PRIMARY KEY (empresa_id, cidade_id)         -- terá uma coluna para dizer se a em-
);                                              -- presa tem uma sede nessa cidade ou 
                                                -- não usando um valor booleado "1" ou
                                                -- "0".
                                                -- Note que definimos ambos os valores
                                                -- recebidos como id das duas tabelas
                                                -- como PK, ou seja, não poderemos ter
                                                -- duplicação entre os valores que ge-
                                                -- ram a nossa PK.
                                                -- DETALHE IMPORTANTE!
                                                -- Note que não geramos uma relação 
                                                -- FK entre as tabelas. Poderíamos ter 
                                                -- feito com que as colunas "empresa_
                                                -- id" e "cidade_id" referenciassem 
                                                -- os "id" nas tabelas "cidades" e "em-
                                                -- presas", mas não fizemos isso por 
                                                -- que essas colunas são PK na nossa 
                                                -- tabela atual, e geralmente usar uma
                                                -- PK como FK de outra PK em outra ta-
                                                -- bela de forma redundante pode gerar
                                                -- confusão e redundância no nosso ban-
                                                -- co de dados. Essa é uma pratica evi-
                                                -- tada. E se formos pensar bem, desne-
                                                -- cessária, visto que a unica função
                                                -- da tabela "empresas_unidades" é re-
                                                -- ferenciar uma relação N:M, ou seja,
                                                -- o objetivo da tabela já está explí-
                                                -- cito.