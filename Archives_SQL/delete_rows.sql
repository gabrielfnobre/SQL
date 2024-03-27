-- DELETAR LINHAS

-- Assim como o insert e o update, o comando delete deve ser usado com extremo cuidado e sempre
-- acompanhado da cláusula "WHERE", pois um DELETE sem WHERE significa que todos os dados de 
-- uma tabela serão excluídos. Veja abaixo como fazer...

DELETE FROM estados -- É assim que usamos o comando DELETE, escolhemos primeiramente a tabela 
WHERE sigla = "NV"; -- onde desejamos que os dados sejam excluídos e depois - usando WHERE -
                    -- escolhemos o registro a ser excluído usando uma operação lógica.

SELECT * FROM estados; -- Veja o resultado.

DELETE FROM estados -- Veja que também é possível excluirmos vários registros de uma única vez,
WHERE id >= 1000;   -- para isso só precisamos que todos os registros obedeçam a uma determina-
                    -- da operação matemática. No caso ao lado, estamos excluindo todos os re-
                    -- gistros cujo valor id seja igual o superior a 1000.

SELECT * FROM estados; -- Veja ao resultado.