-- CONSULTAS

-- Nessa aula vimos como fazer algumas consultas básicas na nossa tabela 
-- de estados, veja alguns exemplos...

select * from estados;  -- Essa consulta serve para ver todos dos dados da
                        -- tabela "estados".
                        -- ATENÇÃO! Fazer esse tipo de consulta geralmente 
                        -- não é bom, pois geralmente trabalhamos com mui-
                        -- tos dados em um BD, o que pode gerar uma grande 
                        -- queda e performace.

select nome, sigla from estados; -- Podemos escolher ver somente as colu-
                                 -- nas que nos interessam, basta colocar
                                 -- seus nomes e separá-las por vírgulas.   

select nome as 'Nomes dos Estados', sigla as 'Símbolo' from estados;
                                 -- Podemos dar apelidos as colunas esco-
                                 -- lhidas usando a palavra reservada "as".

select nome, sigla from estados where regiao = 'Sul'; -- Podemos acrescen-
                                                      -- tar filtros usan-
                                                      -- do a cláusula 
                                                      -- "where" que rece-
                                                      -- be como parâmetro
                                                      -- operações lógicas.
                                                      -- No caso acima 
                                                      -- queremos apenas as
                                                      -- colunas onde a re-
                                                      -- gião é a Sul.

select nome, sigla from estados where populacao >= 10; -- Aqui usamos a 
                                                       -- cláusula "where"
                                                       -- para pegar somen-
                                                       -- te as populações 
                                                       -- equivalentes a 
                                                       -- 10 milhões ou 
                                                       -- mais.

select nome, sigla, populacao from estados
where populacao >= 10 order by populacao;   -- Aqui usamos um exemplo de or-
                                            -- denação de consulta, usando a
                                            -- cláusula "order by", essa 
                                            -- cláusula define que a consul-
                                            -- ta dos estados cuja população
                                            -- seja maior ou igual a 10 mi-
                                            -- lhões irá ordenar a consulta
                                            -- em sentido crescente.

select nome, sigla, populacao from estados
where populacao >= 10 order by populacao desc;  -- Para fazer consultas or-
                                                -- denadas em sentido decres-
                                                -- cente temos que usar a pa-
                                                -- lavra reservada "desc".