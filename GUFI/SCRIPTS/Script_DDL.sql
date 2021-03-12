USE Gufi;
GO

-- EXPLICACAO DO PROFESSOR (DDL)
CREATE TABLE tipoUsuarios
(
	idTipoUsuario		INT PRIMARY KEY IDENTITY
	,tituloTipoUsuario	VARCHAR (200) UNIQUE NOT NULL -- DIZ QUE O VALOR É UNICO, PARA NAO CADASTRAR DADOS REPETIDOS (UNIQUE)

);
GO

CREATE TABLE usuarios
(
	idUsuario			INT PRIMARY KEY IDENTITY
	,idTipoUsuario		INT FOREIGN KEY REFERENCES tipoUsuarios (idTipoUsuario) -- (idTipoUsuario) VOU INFORMAR A COLUNA A QUE FAÇO REFERENCIA
	,nomeUsuario		VARCHAR (200) NOT NULL
	,email				VARCHAR (200) UNIQUE NOT NULL
	,senha				VARCHAR (200) NOT NULL

);
GO

CREATE TABLE instituicoes
(
	idInstituicao		INT PRIMARY KEY IDENTITY
	,cnpj				CHAR (14) UNIQUE NOT NULL 
	,nomeFantasia		VARCHAR (200) NOT NULL
	,endereco			VARCHAR (200) UNIQUE NOT NULL

);
GO

CREATE TABLE tipoEventos
(
	idTipoEvento		INT PRIMARY KEY IDENTITY
	,tituloTipoEvento	VARCHAR (200) UNIQUE NOT NULL

);
GO

CREATE TABLE eventos
(
	idEvento			INT PRIMARY KEY IDENTITY
	,idTipoEvento		INT FOREIGN KEY REFERENCES tipoEventos (idTipoEvento)
	,idInstituicao		INT FOREIGN KEY REFERENCES instituicoes (idInstituicao)
	,nomeEvento			VARCHAR (100) NOT NULL
	,acessoLivre		BIT  DEFAULT (1) -- BIT PODE TER APENAS DOIS VALORES : 0 OU 1, DEFAULT = se eu não informar nada é o valor que será cadastrado
	,dataEvento			DATE
	,descricao			VARCHAR (250) NOT NULL

);
GO

CREATE TABLE presencas
(
	idPresenca			INT PRIMARY KEY IDENTITY
	,idUsuario			INT FOREIGN KEY REFERENCES usuarios (idUsuario)
	,idEvento			INT FOREIGN KEY REFERENCES eventos	(idEvento)
	,situacao			VARCHAR (250) NOT NULL
	
);
GO
