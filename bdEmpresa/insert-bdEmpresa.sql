USE bdEmpresa

GO

INSERT INTO tbDepartamento(nomeDepartamento)
VALUES
	('Dinheiros')
	,('Bala Juquinha')
	,('Arquitetura')

SELECT * FROM tbDepartamento

INSERT INTO tbProjeto(nomeProjeto, cargaHoraria)
VALUES
	('Projeto Lava Grana', 120)
	,('Projeto Juca-Juca', 200)
	,('Prédio Anti Interesseira', 400)

SELECT * FROM tbProjeto

INSERT INTO tbFuncionario(nomeFuncionario, cpfFuncionario, rgFuncionario, idDepartamento)
VALUES
	('Ednaldo Pereira', '32848386355', '283235779', 1)
	,('Vitas', '26660743820', '445464215', 3)
	,('El Hermano', '24749431885', '335308016', 2)

SELECT * FROM tbFuncionario

INSERT INTO tbFuncionarioProjeto(idFuncionario, idProjeto, qtdeHoras)
VALUES
	(1, 1, 120)
	,(2, 3, 80)
	,(3, 2, 150)

SELECT * FROM tbFuncionarioProjeto

INSERT INTO tbFoneFuncionario(numFone, idFuncionario)
VALUES
	('330743004', 1)
	,('430190999', 2)
	,('40028922', 1)

SELECT * FROM tbFoneFuncionario

INSERT INTO tbConjuge(nomeConjuge, idFuncionario)
VALUES
	('Jiren', 3)
	,('Saturno', 2)
	,('Chansey', 1)

SELECT * FROM tbConjuge

INSERT INTO tbDependente(nomeDependente, dtNasctoDependente, idFuncionario)
VALUES
	('Walter Mercado', '22/03/1999', 2)
	,('The Sister', '07/07/2007', 1)
	,('Bills', '30/080/2000', 3)

SELECT * FROM tbDependente
