
-- INSERT NAS TABELAS EMPRESAS E EMPRESAS_UNIDADES

-- Neste exemplo vamos mostrar como fazer insert em tabelas do esquema N:M entre as ta-
-- belas "empresas" e "cidades", lembrando que para isso criamos uma 3ª tabela que irá
-- representar esse tipo de relação, que é a tabela "empresas_unidades".

DESC empresas;  -- A palavra reservada "DESC" executa um comando que faz uma descrição
                -- dos tipos de dados que os campos da tabela recebe. É um comando im-
                -- portante, principalmente quando trabalhamos com relação N:M para re-
                -- lembrar que tipo de dados precisamos colocar nos campos das tabelas.
                -- No exemplo da aula, ao fazer esse comando nos damos conta de que o
                -- campo de "cnpj" da tabela "empresas" está armazenando 15 dígitos  
                -- quando na verdade deveria estar armazenando apenas 14.

ALTER TABLE empresas MODIFY cnpj VARCHAR(14);   -- Para fazer a modificação no tamanho 
                                                -- do varchar de "cnpj" nós usamos as
                                                -- palavras reservadas "ALTER TABLE"
                                                -- (que gera uma alteração nos parâme-
                                                -- tros de dados da tabela) e "MODIFY"
                                                -- (que modifica uma coluna) para mo-
                                                -- dificar o tamanho dos campo do cam-
                                                -- po de varchar do cnpj.

DESC empresas;  -- Usamos "DESC" novamente para ver se o campo foi modificado adequa-
                -- damente.

INSERT INTO empresas                -- Fazemos a inserção das empresas normalmente.
    (nome, cnpj)
VALUES 
    ('Bradesco', 95694186000132),
    ('Vale', 27887148000146),
    ('Cielo', 01598317000134);

SELECT * FROM empresas; -- Verificando a inserção.

DESC empresas_unidades; -- Verificando os tipos de dados que são aceitos na tabela
                        -- "empresas_unidades".

INSERT INTO empresas_unidades       -- Fazendo inserção segundo os campos.
    (empresa_id, cidade_id, sede)
VALUES
    (1,1,1),
    (1,2,0),
    (2,1,0),
    (2,2,1);

SELECT * FROM empresas_unidades;    -- Verificando a inserção.