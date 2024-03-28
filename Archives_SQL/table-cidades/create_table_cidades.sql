CREATE TABLE 
IF NOT EXISTS cidades (                             -- Comando checka se tabela não existe antes de criar;
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,        -- Aceita inteiros não negativos ou nulos, auto-incrementa;
    nome VARCHAR(255) NOT NULL,                     -- Aceita strings, mas não pode ficar nulo;
    estado_id INT UNSIGNED NOT NULL,                -- Aceita inteiros não negativos e não pode ficar nulo;
    area DECIMAL(10,2),                             -- Aceita valores com casas decimais;
    PRIMARY KEY (id),                               -- id será a chave primária;
    FOREIGN KEY (estado_id) REFERENCES estados (id)-- estado_id será a chave estrangeira de id de estados;
);