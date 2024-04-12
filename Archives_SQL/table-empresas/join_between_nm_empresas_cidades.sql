-- JOIN ENTRE UMA RELAÇÃO NM ENTRE 3 COLUNAS DIFERENTES

-- Normalmente os JOIN são feitos entre 2 tabelas. Mas as vezes há a necessidade de 
-- fazer consultas JOIN entre 3 ou mais tabelas, uma boa demonstração dessa necessida-
-- dade é quando temos uma relação N:M, onde há a necessidade explícita da criação de 
-- uma terceira tabela só para relacionar 2 tabelas entre si.
-- Como fazer JOIN entre essas tabelas? Vamos ver alguns exemplos...

SELECT                      -- Aqui temos o exemplo de uma consulta JOIN entre as tabe-
    e.nome Empresas,        -- las relacionadas sem o uso da palavra reservada INNER
    c.nome Cidades,         -- JOIN.
    eu.sede "Tem Sede?"     -- Note que a consulta apenas com a cláusula WHERE é menos
FROM                        -- verbosa do que quando usamos a cláusula WHERE.
    empresas e,             -- Nessa consulta queremos apenas um inner de todos os va-
    cidades c,              -- lores relacionados buscando os nomes da empresas, cida-
    empresas_unidades eu    -- des onde estão e se elas têm sedes nestas localidades.
WHERE e.id = eu.empresa_id
AND c.id = eu.cidade_id;


SELECT                      -- Aqui já temos um exemplo onde utilizamos a cláusula 
    e.nome Empresas,        -- INNER JOIN, note que ficou muito mais verboso, pois te-
    c.nome Cidades,         -- mos que usar as cláusulas em relação a tabela relacio-
    eu.sede "Tem Sede?"     -- nal "empresas_unidades", fazendo um INNER JOIN para ca-
FROM                        -- da tabela relacionada.
    empresas_unidades eu    -- Nessa consulta desejamos receber como retorno apenas as
INNER JOIN                  -- empresas que possuem sede nas determinadas cidades. No-
    empresas e              -- te que para isso usamos uma condicional "AND" apenas 
    ON e.id = eu.empresa_id -- chamando pela coluna "sede". Pois os valores que estão 
INNER JOIN                  -- nessa coluna serão sempre 0 ou 1, se for "1" automati-
    cidades c               -- camente o MySQL entende que o valor "1" é igual a true,
    ON c.id = eu.cidade_id  -- trazendo todos os valores que são iguais a "1";
AND eu.sede;


SELECT                      -- Aqui temos o mesmo exemplo utilizado acima, só que 
    e.nome Empresas,        -- trazendo para nós apenas as cidades onde as empresas
    c.nome Cidades,         -- não possuem sede.
    eu.sede "Tem Sede?"     -- Note que não usamos o INNER JOIN, por isso a busca 
FROM                        -- ficou muito menos verbosa.
    empresas e,
    cidades c,
    empresas_unidades eu
WHERE
    e.id = eu.empresa_id
    AND c.id = eu.cidade_id
    AND eu.sede = 0;