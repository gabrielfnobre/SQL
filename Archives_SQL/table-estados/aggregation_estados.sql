-- AGREGAÇÃO

-- A agregação é um tipo de consulta onde nós juntamos um total de valores em uma das colunas
-- do nosso BD para trazer um determinado resultado.
-- Por exemplo, quando queremos saber a soma total dos valores de uma coluna ou a média dos 
-- dos valores, estamos fazendo uma agregação. Veja nos exemplos abaixo como podemos fazer
-- consultas agregadas...

select sum(populacao) as 'População Total' from estados; -- Neste exemplo estamos fazendo uma
                                                         -- consulta por agregação para saber
                                                         -- o total populacional de todos os
                                                         -- estados do Brasil. Note que para
                                                         -- fazer agregações temos que usar
                                                         -- funções agregadoras do SQL, como
                                                         -- sum() para saber soma ou avg()
                                                         -- para saber a média. Além disso,
                                                         -- note que damos um apelido a nos-
                                                         -- sa consulta usando a palavra re-
                                                         -- servada "as"...

select                                      -- Aqui temos uma consulta por agregação com 2 
    regiao as 'Região',                     -- colunas, onde nós queremos saber a média po-
    avg(populacao) as 'Média Populacional'  -- pulacional de cada região do Brasil. Para is-
from                                        -- so selecionamos a coluna região dando um ape-
    estados                                 -- lido a ela e fizemos uma agregação por atra-
group by regiao                             -- vés da função avg, trazendo as médias popula-
order by 'Média Populacional' desc;         -- cionais. Mas note que para trazer essas mé-
                                            -- dias primeiro tivemos que informar ao SQL on-
                                            -- de ele faria o agrupamento dessas médias (ou
                                            -- seja, que critério ele usaria para gerar as
                                            -- agregações por através de média), e o crité-
                                            -- rio foi justamente as regiões, ele irá fazer
                                            -- a média de cada região e trazer para nós.
                                            -- Além disso, pedimos que essas médias fossem
                                            -- apresentadas de forma decrescentes.

select avg(populacao) as 'Média' from estados; -- Aqui fizemos uma consulta para saber a 
                                               -- média população de todo o país.