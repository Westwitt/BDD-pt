CREATE DATABASE bdEscola

GO

USE bdEscola

CREATE TABLE tbPeriodo(
	codPeriodo INT PRIMARY KEY IDENTITY(1,1)
	,nomePeriodo VARCHAR(40) NOT NULL
)

CREATE TABLE tbCurso(
	codCurso INT PRIMARY KEY IDENTITY(1,1)
	,nomeCurso VARCHAR(40) UNIQUE NOT NULL
	,cargaHorariaCurso SMALLINT NOT NULL
	,codPeriodo INT FOREIGN KEY REFERENCES tbPeriodo(codPeriodo)
)
CREATE TABLE tbAluno(
	codAluno INT PRIMARY KEY IDENTITY(100,2)
	,nomeAluno VARCHAR(40) NOT NULL
	,dataNascAluno DATETIME CHECK (dataNascAluno< getdate()) -- 'GETDATE' é tratado como varchar, getdate() é a função
	,ruaAluno SMALLINT NOT NULL
	,numCasaAluno SMALLINT NOT NULL
	,bairroAluno VARCHAR(80) NOT NULL
	,telefoneAluno VARCHAR(10) NOT NULL
)
CREATE TABLE tbMatricula(
	codMatricula INT PRIMARY KEY IDENTITY(1,1)
	,dataMatricula DATETIME DEFAULT getdate()
	,codAluno INT FOREIGN KEY REFERENCES tbAluno(codAluno)
	,codCurso INT FOREIGN KEY REFERENCES tbCurso(codCurso)
	,codPeriodo INT FOREIGN KEY REFERENCES tbPeriodo(codPeriodo)
)

