-- CREATE TABLE

-- O comando create table é usado para gerarmos tabelas no nosso banco de dados.
-- veja abaixo como esse comando pode ser feito...

create table estados (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    sigla VARCHAR(2) NOT NULL,
    regiao ENUM('Norte', 'Nordeste', 'Centro-Oeste', 'Sudeste', 'Sul') NOT NULL,
    populacao DECIMAL (5,2) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY (nome),
    UNIQUE KEY (sigla)
)

-- linha 6: temos o comando que gera a tabela "estados" (geralmente usamos plural)
-- em nomes de tabelas.

-- linha 7: começamos a declarar as colunas (atributos), podemos declarar vários
-- atributos de uma única vez desde que os separemos por vírgula. Veja que o 1º
-- atributo é o "id", que se trata de um atributo inteiro (INT), não poderá ter 
-- valores negativos (UNSIGNED), não poderá ter campos nulos (NOT NULL) e terá 
-- valores auto incrementados (AUTO_INCREMENT).

-- linhas 8 e 9: contém as colunas "nome" e "sigla", que aceitam valores VARCHAR
-- (cadeia de caracteres, como as strings) que podem conter tanto letras como 
-- números e caracteres especiais, entre parênteses colocamos quantos caracteres
-- serão possíveis de colocarmos dentro destes campos. Além disso, essas colunas
-- são NOT NULL.

-- linha 10: contém a coluna "regiao", que contém uma ENUM (conjunto de dados que 
-- só poderá usar um determinado conjunto de valores pré-determinados, que no ca-
-- so são: 'Norte', 'Nordeste', 'Centro-Oeste', 'Sudeste', 'Sul'), se qualquer 
-- valor fora da ENUM for colocado, o comando gera erro. Além disso, essa coluna
-- é NOT NULL.

-- linha 11: contém a coluna "populacao", essa coluna aceita valores com casas 
-- decimais (DECIMAL) - entre os parênteses do comando DECIMAL, podemos colocar
-- quantas casas antes e depois da vírgula poderão ser aceitas. Além disso, essa
-- coluna é NOT NULL.

-- linha 12: temos um comando DDL de PRIMARY KEY, com esse comando podemos esco-
-- 1 ou mais colunas que serão serão a chave primária da nossa tabela, basta co-
-- locarmos nos parênteses que será ou serão as tabelas escolhidas como PK da 
-- nossa tabela.

-- linhas 13 e 14: temos um comando DDL de UNIQUE KEY, esse comando define que 
-- uma coluna não poderá ter duplicidade nos seus valores. Embora as linhas 13 
-- e 14 estejam usando cada uma apenas 1 coluna entre seus parênteses, podemos
-- colocar várias colunas dentro de um comando UNIQUE KEY, basta os separarmos
-- por vírgula.