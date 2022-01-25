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

CREATE TABLE Pilotos (
	IdPiloto int NOT NULL,
	Nome varchar(200) NOT NULL,
	AnoNasc varchar(10) NOT NULL,
	IdPlaneta int NOT NULL,
	PRIMARY KEY (IdPiloto),
	CONSTRAINT FK_PlanetaDoPiloto FOREIGN KEY (IdPlaneta) REFERENCES Planetas(IdPlaneta)
);

CREATE TABLE PilotosNaves (
	IdPiloto int NOT NULL,
	IdNave int NOT NULL,
	FlagAutorizacao bit NOT NULL DEFAULT 1,
	CONSTRAINT FK_PilotosNaves_Naves
	FOREIGN KEY (IdNave) REFERENCES Naves(IdNave),
	CONSTRAINT FK_PilotosNaves_Pilotos
	FOREIGN KEY (IdPiloto) REFERENCES Pilotos(IdPiloto),
	PRIMARY KEY (IdPiloto, IdNave)
);

CREATE TABLE HistoricoViagens (
	IdNave int NOT NULL,
	IdPiloto int NOT NULL,
	DtSaida datetime NOT NULL,
	DtChegada datetime NULL,
	CONSTRAINT FK_HistoricoViagens_PilotosNaves FOREIGN KEY(IdNave, IdPiloto)
	REFERENCES PilotosNaves (IdNave, IdPiloto)
);
