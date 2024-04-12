SELECT 
    e.nome Empresas,
    c.nome Cidades,
    eu.sede "Tem Sede?"
FROM
    empresas e,
    cidades c,
    empresas_unidades eu
WHERE e.id = eu.empresa_id
AND c.id = eu.cidade_id;


SELECT
    e.nome Empresas,
    c.nome Cidades,
    eu.sede "Tem Sede?"
FROM
    empresas_unidades eu
INNER JOIN
    empresas e
    ON e.id = eu.empresa_id
INNER JOIN
    cidades c
    ON c.id = eu.cidade_id
AND eu.sede;


SELECT
    e.nome Empresas,
    c.nome Cidades,
    eu.sede "Tem Sede?"
FROM
    empresas e,
    cidades c,
    empresas_unidades eu
WHERE
    e.id = eu.empresa_id
    AND c.id = eu.cidade_id
    AND eu.sede = 0;