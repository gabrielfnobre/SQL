-- INSERT

-- Os INSERT são comando usados para inserção de dados nas colunas de uma 
-- tabela, veja abaixo exemplos de como podemos usá-los...

-- O comando INSERT INTO serve para escolher a tabela e as colunas onde os
-- dados serão inseridos...
INSERT INTO estados (nome, sigla, regiao, populacao) -- veja a ordem de escolha
VALUES ('Acre', 'AC', 'Norte', 0.83); -- o comando VALUES define os valores que
                                        -- serão inseridos, ATENÇÃO, a ordem se
                                        -- inserção tem que ser de acordo com a
                                        -- ordem de escolha da colunas, valores
                                        -- passados errados poderão ser armaze-
                                        -- nados errado, ou nem se quer aceitos
                                        -- dependendo a regra de esquema que 
                                        -- foi aplicada durante a criação das 
                                        -- colunas.

INSERT INTO estados (nome, sigla, regiao, populacao)
VALUES ('Alagoas', 'AL', 'Nordeste', 3.38),
        ('Amapá', 'AP', 'Norte', 0.8),
        ('Amazonas', 'AM', 'Norte', 4.06); -- Se tivermos apenas 1 regra de in-
                                            -- serção num arquivo "sql" não 
                                            -- precisamos usar ";" mas se ti-
                                            -- vermos várias regras de inserção
                                            -- temos que usar ";" para o sql 
                                            -- entender que são execuções dife-
                                            -- rentes.

INSERT INTO estados (nome, sigla, regiao, populacao)
VALUES ('Bahia', 'BA', 'Nordeste', 15.34),
        ('Ceará', 'CE', 'Nordeste', 9.02),
        ('Distrito Federal', 'DF', 'Centro-Oeste', 3.04),
        ('Espírito Santo', 'ES', 'Sudeste', 4.02),
        ('Goiás', 'GO', 'Centro-Oeste', 6.78),
        ('Maranhão', 'MA', 'Nordeste', 7.00),
        ('Mato Grosso', 'MT', 'Centro-Oeste', 3.34),
        ('Mato Grosso do Sul', 'MS', 'Centro-Oeste', 2.71),
        ('Minas Gerais', 'MG', 'Sudeste', 21.12),
        ('Pará', 'PA', 'Norte', 8.36),
        ('Paraíba', 'PB', 'Nordeste', 4.03),
        ('Parana', 'PR', 'Sul', 11.22),
        ('Pernambuco', 'PE', 'Nordeste', 9.47),
        ('Piauí', 'PI', 'Nordeste', 3.22),
        ('Rio de Janeiro', 'RJ', 'Sudeste', 16.72),
        ('Rio Grande do Norte', 'RN', 'Nordeste', 3.51),
        ('Rio Grande do Sul', 'RS', 'Sul', 11.32),
        ('Rondônia', 'RO', 'Norte', 1.81),
        ('Roraima', 'RR', 'Norte', 0.52),
        ('Santa Catarina', 'SC', 'Sul', 7.01),
        ('São Paulo', 'SP', 'Sudeste', 45.10),
        ('Sergipe', 'SE', 'Nordeste', 2.29),
        ('Tocantions', 'TO', 'Norte', 1.55);

SELECT * FROM estados; -- Uma consulta para ver se todos os valores foram colocados corretamente;
SELECT * FROM estados WHERE populacao = 4.06; -- Uma consulta por um valor de população específico;

SELECT * FROM estados 
WHERE populacao = (SELECT MAX(populacao) FROM estados); -- retorna o estado com maior população;

SELECT * FROM estados 
WHERE populacao = (SELECT MIN(populacao) FROM estados); -- retorna o estado com menor população;

SELECT * FROM estados 
WHERE populacao = (SELECT MAX(populacao) FROM estados)
OR
populacao = (SELECT MIN(populacao) FROM estados); -- retorna os estados com menor e maior população;