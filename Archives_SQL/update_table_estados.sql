-- ATUALIZAÇÕES DE DADOS

-- Nessa aula vimos como atualizar dados nas tabelas do nosso BD. 

-- ATENÇÃO!
-- Algo muito importante a se falar sobre fazer atualizações, bem como exclusões 
-- é que tanto atualizações como exclusões geralmente vêm acompanhadas da cláusu-
-- la "WHERE", pois uma atualização ou exclusão que não venha acompanhada dessa 
-- cláusula será uma atualização ou exclusão que impactará a tabela inteira, um
-- erro poderia ser extremamente fatal.

update estados set nome = 'Maranhão'    -- Note que para gerar atualizações em 
where sigla = 'MA';                     -- BD usamos as palavras reservadas 
                                        -- "update" e "set". A palavra "update"
                                        -- usamos para escolher a tabela que 
                                        -- desejamos atualizar. A palavra "set"
                                        -- usamos para escolher a coluna e o
                                        -- dado que queremos atualizar, note 
                                        -- que usamos o nome da coluna seguido
                                        -- pelo sinal de igual "=" - nesse con-
                                        -- texto o sinal de igual NÃO SERVE PA-
                                        -- RA FAZER COMPARAÇÃO DE IGUALDADE, 
                                        -- mas sim para sinal de "atribuição" -
                                        -- que é seguido pelo valor que deseja-
                                        -- mos que seja atribuído a coluna.
                                        -- Já a cláusula "WHERE" server para 
                                        -- filtramos a linha onde desejamos que
                                        -- a atualização aconteça. Geralmente 
                                        -- usamos a PK para fazer esse filtro,
                                        -- mas como coluna "sigla" também é 
                                        -- UNIQUE podemos usar a sigla do es-
                                        -- tado para fazer essa modificação.

update estados          -- Veja que também é possível fazer alterações em mais
set nome = 'Paraná',    -- de uma coluna de uma única vez. Basta separarmos as 
    populacao = 11.32   -- colunas onde queremos fazer as atualizações por vír-
where sigla = 'PR';     -- gula.

select nome, sigla, populacao from estados where sigla = 'PR' or sigla = 'MA';
                        -- Veja que as modificações foram feitas com sucesso!