
-- JUNÇÃO ENTRE AS TABELAS CIDADES E ESTADOS

-- Nós podemos fazer junções entre os registros de 2 tabelas para buscar resultados das 2, por exemplo,
-- na tabela estados temos os nomes dos estados, mas não temos o nome das cidades, e vice e versa na 
-- tabela cidades.
-- Se desejarmos fazer uma pesquisa entre as tabelas para juntar as informações das duas tabelas para 
-- trazer todas as cidades, os nomes dos estados e suas regiões em uma única tabela, vamos precisar fa-
-- zer uma pesquisa de junção entre as tabelas, as famosas "joins".
-- Veja como podemos fazer...

SELECT * FROM estados, cidades; -- Aqui temos o exemplo de uma pesquisa sem join, veja que vira uma 
                                -- loucura, o SQL faz um plano carteziano entre as tabelas juntando to-
                                -- dos os valores indiscriminadamente. Essa pesquisa até pode ser útil 
                                -- em tabelas que não utilizem chaves primárias e o objetivo seja ape-
                                -- nas juntar valores. Mas em tabelas interligadas por chave estrangei-
                                -- ra não.


SELECT                      -- Aqui já temos o exemplo de uma join, note que escolhemos quais colunas
    e.nome as "Estados",    -- desejamos que o join mostre (Veja que foi necessário criar alias para 
    c.nome as "Cidades",    -- as tabelas, pois temos 2 colunas que tem o mesmo nome nas tabelas estado
    regiao as "Região"      -- e cidade. Na tabela região não foi necessário).
FROM                        -- Note que no FROM chamamos pelas 2 tabelas, é nesse momento que fazemos o
    estados e,              -- join, mas para que esse join não se transforme numa bagunça, como no 
    cidades c               -- exemplo do plano cartesiano, precisamos de uma cláusula WHERE para saber
WHERE                       -- que critério será usado para juntar as informações, que no caso são as 
    e.id = estado_id;       -- chaves estrangeiras entre as tabelas.


SELECT                      -- Aqui temos o exemplo usando "INNER JOIN ON", o "INNER JOIN" é uma pala-
    e.nome as "Estados",    -- vra reservada justamente para unir tabelas em uma join usando algum tipo
    c.nome as "Cidades",    -- de condicional junto a palavra reservada "ON", onde podemos colocar uma
    e.regiao as "Região"    -- operação condicional a nossa escolha.
FROM
    estados e 
INNER JOIN 
    cidades c
    ON e.id = c.estado_id;


SELECT                      -- Veja aqui que temos uma query usando join usando uma porta lógica AND
    e.nome as "Estados",    -- para buscar somente as cidades e estados que estejam localizados no 
    c.nome as "Cidades",    -- nordeste.
    e.regiao as "Região"
FROM
    estados e 
INNER JOIN 
    cidades c
    ON e.id = c.estado_id
    AND regiao = "Nordeste";