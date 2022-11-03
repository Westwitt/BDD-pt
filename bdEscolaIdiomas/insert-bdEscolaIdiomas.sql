USE bdEscolaIdiomas

INSERT INTO tbAluno (nomeAluno, rgAluno, enderecoAluno, numEndAluno, compAluno, bairroAluno, cepAluno, cidadeAluno)
VALUES 
	('Ednaldo Pereira','147583536','Otelo Augusto Ribeiro','56','Sala 45','Guaianases','09667-030','São Paulo')
	,('Gato de Butijões','411438268','Rua do Gás','67','Apartamento 6','Liberdade','09270-160','Mogi das Cruzes')
	,('Los Lobos','127832233','Rua Tritão da Serra','81','Quarto andar','Cambuci','13485-170','Sorocaba')
	,('Amon Gus','141482849','Rua São Pagão','13','','Casa Verde','05791-120','Guarulhos')
	,('Edukof Amenic','494709716','Rua Casé do Jambeiro','666','Sétimo andar sala 77','Imperador','12061-063','São Paulo')
	,('Jurema','283463260','Rua São Paulo','42','','Guaianases','13412-033','São Paulo')

SELECT * FROM tbAluno

INSERT INTO tbFoneAluno(foneAluno, idAluno)
VALUES
	('(19) 3334-7038', 1)
	,('(14) 2708-4939', 1)
	,('(13) 3052-2783', 2)
	,('(16) 3357-4514', 2)
	,('(11) 2338-4619', 3)
	,('(13) 3813-6063', 3)
	,('(16) 2363-6693', 4)
	,('(18) 2988-8160', 4)
	,('(15) 2576-1171', 5)
	,('(17) 2538-9131', 5)
	,('(13) 3172-7732', 6)
	,('(16) 2277-7994', 6)

SELECT * FROM tbFoneAluno

INSERT INTO tbNivel(descNivel)
VALUES
	('Iniciante')
	,('Intermediario')
	,('Fluente')

SELECT * FROM tbNivel

INSERT INTO tbCurso (nomeCurso)
VALUES
	('Inglês')
	,('Espanhol')
	,('Alemão')

SELECT * FROM tbCurso

INSERT INTO tbPeriodo(descPeriodo)
VALUES
	('Manhã')
	,('Tarde')
	,('Noite')

SELECT * FROM tbPeriodo

INSERT INTO tbDiaSemana(diaSemana)
VALUES
	('Segunda')
	,('Terça')
	,('Quarta')
	,('Quinta')
	,('Sexta')
	,('Sábado')

SELECT * FROM tbDiaSemana

INSERT INTO tbTurma(horario, idCurso,idPeriodo, idNivel,idDiaSemana)
VALUES
	('09:30:00', 1, 1, 2, 1)
	,('07:00:00', 2, 1, 1, 3)
	,('13:30:00', 1, 2, 3, 4)
	,('18:00:00', 3, 3, 2, 2)
	,('13:00:00', 3, 2, 1, 5)

SELECT * FROM tbTurma

--VERSÃO PT
INSERT INTO tbMatricula(dataMatricula, idAluno, idTurma)
VALUES
	('09/11/2015', 1, 1)
	,('10/11/2015', 1, 2)
	,('07/07/2016', 2, 2)
	,('22/08/2016', 2, 4)
	,('14/09/2016', 3, 5)
	,('15/09/2016', 3, 1)
	,('13/12/2016', 4, 2)
	,('25/02/2017', 4, 3)
	,('20/03/2017', 5, 4)
	,('15/04/2017', 5, 3)
	,('17/08/2018', 6, 2)
	,('19/09/2019', 6, 1)

SELECT * FROM tbMatricula

--VERSÃO INGLÊS
--INSERT INTO tbMatricula(dataMatricula, idAluno, idTurma)
--VALUES
--	('11/09/2015', 1, 1)
--	,('11/10/2015', 1, 2)
--	,('07/07/2016', 2, 2)
--	,('08/22/2016', 2, 4)
--	,('09/14/2016', 3, 5)
--	,('09/15/2016', 3, 1)
--	,('12/13/2016', 4, 2)
--	,('02/25/2017', 4, 3)
--	,('03/20/2017', 5, 4)
--	,('04/15/2017', 5, 3)
--	,('08/17/2018', 6, 2)
--	,('09/19/2019', 6, 1)

--SELECT * FROM tbMatricula