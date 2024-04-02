INSERT INTO cidades (nome, area, estado_id)
VALUES('Campinas', 795, 31);

INSERT INTO cidades (nome, area, estado_id)
VALUES('Niterói', 133.9, (SELECT id FROM estados WHERE sigla = 'RJ')),
    ('Caruaru', 920.6, (SELECT id FROM estados WHERE sigla = 'PE')), 
    ('Juazeiro do Norte', 248.2, (SELECT id FROM estados WHERE sigla = 'CE'));

UPDATE cidades SET estado_id = (SELECT id FROM estados WHERE sigla = 'SP')
WHERE nome = 'Campinas';

select * from `cidades`;
select * from estados;