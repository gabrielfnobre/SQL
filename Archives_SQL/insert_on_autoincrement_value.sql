-- INSERT EM VALORES AUTO-INCREMENTOS

-- É possível inserir valores escolhendo um valor específico de um auto-incremento...

INSERT INTO estados (id, nome, populacao, regiao, sigla) -- Veja que podemos escolher
VALUES (1000, 'Novo', 2.34, 'Sul', 'NV');                -- a coluna "id" e dar a ela
                                                         -- um valor qualquer (que não
                                                         -- exista ainda no auto-in-
                                                         -- cremento), e a tabela 
                                                         -- aceitará este valor.

SELECT * FROM estados; -- Veja o resultado.

INSERT INTO estados (nome, populacao, regiao, sigla) -- Agora vamos fazer uma outra 
VALUES ('Novo Novo', 2.34, 'Sul', 'NN');             -- inserção, só que está é uma
                                                     -- inserção comum, sem atribui-
                                                     -- ção de auto-incremento. Note
                                                     -- que o auto-incremento vai 
                                                     -- continuar acontecendo, só que
                                                     -- agora será a partir do número
                                                     -- 1000. Essa é outra regra do
                                                     -- auto-incremento, ele sempre 
                                                     -- acontece para frente, nunca
                                                     -- vai continuar a partir de es-
                                                     -- paços em branco na tabela.

SELECT * FROM estados; -- Veja o resultado.