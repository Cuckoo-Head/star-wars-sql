CREATE DATABASE StarWars;
USE StarWars;
CREATE TABLE Planetas( 
	IdPlaneta int NOT NULL AUTO_INCREMENT,
	Nome varchar(50) NOT NULL,
	Rotacao float NOT NULL,
	Orbita float NOT NULL,
	Diametro float NOT NULL,
	Clima varchar(50) NOT NULL,
	Populacao int NOT NULL,
	PRIMARY KEY (IdPlaneta)
);

CREATE TABLE Naves(
	IdNave int NOT NULL AUTO_INCREMENT,
	Nome varchar(100) NOT NULL,
	Modelo varchar(100) NOT NULL,
	NumPassageiros int NOT NULL,
	Carga float NOT NULL,
	Classe varchar(100) NOT NULL,
	PRIMARY KEY (IdNave)
);