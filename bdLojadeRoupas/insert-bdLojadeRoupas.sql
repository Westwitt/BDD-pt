USE bdLojadeRoupas

INSERT INTO tbFabricante(nomeFabricante)
VALUES
	('Malwee')
	,('Marisol')
	,('Cia da Malha')

SELECT * FROM tbFabricante

INSERT INTO tbFuncionario(nomeFuncionario, idadeFuncionario, dataAdmissao, salarioFuncionario)
VALUES
--VERSÃO INGLES
	('João Juca-Juca', 22, '08/21/2015', 2300)
	,('Jesus de Jesus dos Santos', 30, '09/09/2018', 1500)
--VERSÃO PORTUGUES
	--('João Juca-Juca', 22, '21/08/2015', 2300)
	--('Jesus de Jesus dos Santos', 30, '09/09/2018', 1500)

SELECT * FROM tbFuncionario

INSERT INTO tbProduto(nomeProduto, precoProduto, dataEntradaProduto, estoqueProduto, codFuncionario, codFabricante)
VALUES
-- VERSÃO INGLES
	('Camisa Juca-Juca', 50, '07/20/2016', 500, 1, 1)
	,('Calças Bolso Narrow', 40, '05/13/2015', 200, 1, 1)
	,('Camisa Anti Malwee-re', 80, '11/12/2019', 800, 2, 1)
	,('Óculos Marisol', 120, '12/12/2017', 250, 1, 2)
	,('Moletom "Rosto de Bebê dos Teletubbies"', 150, '09/23/2018', 550, 2, 2)
	,('Botas de Gato', 75, '04/04/2020', 130, 2, 2)
	,('Camisa Vermelha Mônica', 100, '05/08/2019', 380, 1, 3)
	,('Shorts de Malha Fina', 230, '12/25/2021', 525, 2, 3)
	,('Casaco Drip', 500, '06/13/2017', 50, 1, 3)
-- VERSÃO PORTUGUES
	--('Camisa Juca-Juca', 50, '20/07/2016', 500, 1, 1)
	--,('Calças Bolso Narrow', 40, '13/05/2015', 200, 1, 1)
	--,('Camisa Anti Malwee-re', 80, '12/11/2019', 800, 2, 1)
	--,('Óculos Marisol', 120, '12/12/2017', 250, 1, 2)
	--,('Moletom "Rosto de Bebê dos Teletubbies"', 150, '23/09/2018', 550, 2, 2)
	--,('Botas de Gato', 75, '04/04/2020', 130, 2, 2)
	--,('Camisa Vermelha Mônica', 100, '08/05/2019', 380, 1, 3)
	--,('Shorts de Malha Fina', 230, '25/12/2021', 525, 2, 3)
	--,('Casaco Drip', 500, '13/06/2017', 50, 1, 3)

SELECT * FROM tbProduto

INSERT INTO tbCliente(nomeCliente, idadeCliente)
VALUES
	('Juranji do Filme', 18)
	,('Roberto Faro', 34)
	,('Gilberto Raul Barros Gil', 56)
	,('Mateus Caneta', 20)
	,('Takama Sanomuro', 72)

SELECT * FROM tbCliente

INSERT INTO tbVendedor(nomeVendedor)
VALUES
	('João Santana')
	,('Raquel Torres')

SELECT * FROM tbVendedor

INSERT INTO tbVenda(dataVenda, totalVenda, codCliente, codVendedor)
VALUES
-- VERSÃO INGLES
	('08/15/2021', 90, 1, 1)
	,('12/25/2019', 360, 2, 2)
	,('08/05/2020', 400, 3, 2)
	,('10/08/2022', 530, 4, 1)
	,('06/13/2020', 1000, 5, 2)
-- VERSÃO PORTUGUES
	--('15/08/2021', 90, 1, 1)
	--,('25/12/2019', 360, 2, 2)
	--,('05/08/2020', 400, 3, 2)
	--,('08/10/2022', 530, 4, 1)
	--,('13/06/2020', 1000, 5, 2)
SELECT * FROM tbVenda

INSERT INTO tbItensVenda(quantidadeItens, subTotalItens, codVenda, codProduto)
VALUES
	(1, 50, 1, 1)
	,(1, 40, 1, 2)
	,(3, 240, 2, 3)
	,(1, 120, 2, 4)
	,(2, 300, 3, 5)
	,(1, 100, 3, 7)
	,(4, 300, 4, 6)
	,(1, 230, 4, 8)
	,(2, 500, 5, 9)
	,(5, 500, 5, 7)

SELECT * FROM tbItensVenda

--SELECT * FROM tbCliente
--SELECT * FROM tbFabricante
--SELECT * FROM tbFuncionario
--SELECT * FROM tbItensVenda
--SELECT * FROM tbProduto 
--SELECT * FROM tbVenda
--SELECT * FROM tbVendedor