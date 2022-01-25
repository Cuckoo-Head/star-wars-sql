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

