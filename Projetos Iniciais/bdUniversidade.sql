CREATE DATABASE bdUniversidade

USE bdUniversidade

CREATE TABLE tbAluno(
	idAluno INT PRIMARY KEY IDENTITY(1,1)
	,nomeAluno VARCHAR(50) NOT NULL
	,dtNascAluno SMALLDATETIME NOT NULL
	,cpfAluno CHAR(14) NOT NULL
)

CREATE TABLE tbProfessor(
	idProfessor INT PRIMARY KEY IDENTITY(1,1)
	,nomeProfessor VARCHAR(50) NOT NULL
	,dtNascProf SMALLDATETIME NOT NULL
	,rgProfessor VARCHAR(14) NOT NULL
)
CREATE TABLE tbCampus(
	idCampus INT PRIMARY KEY IDENTITY(1,1)
	,nomeCampus VARCHAR(50) NOT NULL
)
CREATE TABLE tbCurso(
	idCurso INT PRIMARY KEY IDENTITY(1,1)
	,nomeCurso VARCHAR(50) NOT NULL
	,cargaHorariaCurso SMALLINT NOT NULL
)
CREATE TABLE tbDisciplina(
	idDisciplina INT PRIMARY KEY IDENTITY(1,1)
	,nomeDisciplina VARCHAR(50) NOT NULL
	,cargaHorariaDisciplina SMALLINT NOT NULL
)
CREATE TABLE tbTurma(
	idTurma INT PRIMARY KEY IDENTITY(1,1)
	,descricaoTurma VARCHAR(400) NOT NULL
	,idCurso INT FOREIGN KEY REFERENCES tbCurso(idCurso)
	,idCampus INT FOREIGN KEY REFERENCES tbCampus(idCampus)
	,numAlunos TINYINT NOT NULL
	,semestre TINYINT NOT NULL
	,anoFormacao SMALLINT NOT NULL
	,numSala TINYINT NOT NULL
)
CREATE TABLE tbMatricula(
	idMatricula INT PRIMARY KEY IDENTITY(1,1)
	,dtMatricula SMALLDATETIME NOT NULL
	,idAluno INT FOREIGN KEY REFERENCES tbAluno(idAluno)
	,idTurma INT FOREIGN KEY REFERENCES tbTurma(idTurma)
)
CREATE TABLE tbAtribuicao(
	idAtribuicao INT PRIMARY KEY IDENTITY(1,1)
	,dataAtribuicao SMALLDATETIME
	,idProfessor INT FOREIGN KEY REFERENCES tbProfessor(idProfessor)
	,idTurma INT FOREIGN KEY REFERENCES tbTurma(idTurma)
	,idDisciplina INT FOREIGN KEY REFERENCES tbDisciplina(idDisciplina)
)