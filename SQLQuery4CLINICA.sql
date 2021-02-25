CREATE DATABASE Clinicas;

CREATE TABLE Clinica
(
	idClinica	INT PRIMARY KEY IDENTITY	
	,Endereco	VARCHAR (200)
);

CREATE TABLE Raca
(
	idRaca	INT PRIMARY KEY IDENTITY
	,Nome	VARCHAR (200) NOT NULL
);

CREATE TABLE Dono
(
	idDono	INT PRIMARY KEY IDENTITY
	,Nome	VARCHAR (200)
);

CREATE TABLE Veterinarios
(
	idVeterinario INT PRIMARY KEY IDENTITY	
	,Nome	VARCHAR (200)
);

CREATE TABLE Pets
(
	idPet	INT PRIMARY KEY IDENTITY
	,DatadeNascimento	DATETIME 
	,Nome		VARCHAR (200)
	,TipoDePet	VARCHAR (200)
);