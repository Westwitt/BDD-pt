USE bdLojadeRoupas

SELECT * FROM tbCliente
SELECT * FROM tbFabricante
SELECT * FROM tbFuncionario
SELECT * FROM tbItensVenda
SELECT * FROM tbProduto 
SELECT * FROM tbVenda
SELECT * FROM tbVendedor

-- ATIVIDADE 1
UPDATE tbFabricante
SET nomeFabricante = 'Turma da Malha'
WHERE codFabricante = 3

-- ATIVIDADE 2
UPDATE tbVenda
SET totalVenda = totalVenda * 0.9
WHERE codCliente = 1

-- ATIVIDADE 3
UPDATE tbProduto
SET precoProduto = precoProduto * 1.2
WHERE codFabricante = 2

-- ATIVIDADE 4
UPDATE tbProduto
SET estoqueProduto = estoqueProduto - 10
WHERE codProduto = 3

-- ATIVIDADE 5
DELETE tbItensVenda
WHERE codItensVenda = 4

-- ATIVIDADE 6
DELETE tbItensVenda
WHERE codVenda = 3

-- ATIVIDADE 7
DELETE tbFabricante
WHERE codFabricante = 1
-- Report: Não é possível deletar o tbFabricante, pois uma outra entidade cadastrada usa o id do tbFabricante como uma FK.