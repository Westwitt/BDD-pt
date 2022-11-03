CREATE DATABASE bdEscolaIdiomas

GO

USE bdEscolaIdiomas

CREATE TABLE tbAluno(

	idAluno INT PRIMARY KEY IDENTITY (1,1)
	,nomeAluno VARCHAR (50) NOT NULL
	,rgAluno VARCHAR (12) NOT NULL
	,enderecoAluno VARCHAR (50) NOT NULL
	,numEndAluno VARCHAR (5) NOT NULL
	,compAluno VARCHAR (50)
	,bairroAluno VARCHAR (50) NOT NULL
	,cepAluno VARCHAR (9) NOT NULL
	,cidadeAluno VARCHAR (50) NOT NULL
)

CREATE TABLE tbFoneAluno(
	
	idFoneAluno INT PRIMARY KEY IDENTITY (1,1)
	,foneAluno VARCHAR (15) NOT NULL
	,idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno)
)

CREATE TABLE tbNivel(
	idNivel INT PRIMARY KEY IDENTITY (1,1)
	,descNivel VARCHAR(50) NOT NULL
)

CREATE TABLE tbCurso(
	idCurso  INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso VARCHAR(50) NOT NULL
)

CREATE TABLE tbPeriodo(
	idPeriodo INT PRIMARY KEY IDENTITY (1,1)
	,descPeriodo VARCHAR(50) NOT NULL 
)

CREATE TABLE tbDiaSemana(
	idDiaSemana INT PRIMARY KEY IDENTITY (1,1)
	,diaSemana VARCHAR(10) NOT NULL
)

CREATE TABLE tbTurma(
	idTurma INT PRIMARY KEY IDENTITY (1,1)
	,horario SMALLDATETIME NOT NULL
	,idCurso INT FOREIGN KEY REFERENCES tbCurso (idCurso)
	,idPeriodo INT FOREIGN KEY REFERENCES tbPeriodo (idPeriodo)
	,idNivel INT FOREIGN KEY REFERENCES tbNivel (idNivel)
	,idDiaSemana INT FOREIGN KEY REFERENCES tbDiaSemana (idDiaSemana)
)

CREATE TABLE tbMatricula( 
	idMatricula INT PRIMARY KEY IDENTITY (1,1)
	,dataMatricula SMALLDATETIME NOT NULL
	,idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno)
	,idTurma INT FOREIGN KEY REFERENCES tbTurma (idTurma)
)
