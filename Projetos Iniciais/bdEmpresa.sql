CREATE DATABASE bdEmpresa

USE bdEmpresa

CREATE TABLE tbDepto(
	idDepto INT PRIMARY KEY IDENTITY(1,1)
	,nomeDepto VARCHAR(20) NOT NULL
)

CREATE TABLE tbFunc(
	idFunc INT PRIMARY KEY IDENTITY(1,1)
	,nomeFunc VARCHAR(50) NOT NULL
	,dtNasctoFunc SMALLDATETIME NOT NULL
	,cpfFunc CHAR(14) NOT NULL
	,salarioFunc SMALLMONEY NOT NULL
	,idDepto INT FOREIGN KEY REFERENCES tbDepto (idDepto)
)