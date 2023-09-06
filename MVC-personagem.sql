-- Código utilizado para a criação do banco de dados sem senha, se necessário alterar a senha --

CREATE DATABASE mvcpersonagem;

USE mvcpersonagem;

CREATE TABLE Perso (
  idPerso int(11) PRIMARY KEY AUTO_INCREMENT,
  nomePerso varchar(100) NOT NULL,
  anoPerso INT (4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=LATIN1;

CREATE TABLE Users (
  idUser int(11) PRIMARY KEY AUTO_INCREMENT,
  nomeUser varchar(100) NOT NULL,
  idadeUser int(3) NOT NULL,
  emailUser varchar(100) NOT NULL
) ENGINE=MYISAM AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;

CREATE TABLE Opinion (
  idOpina int(11) PRIMARY KEY AUTO_INCREMENT,
  nomePerso varchar(100) NOT NULL,
  emailUser varchar(100) NOT NULL, 
  opiniao varchar (500) NOT NULL,
  FOREIGN KEY (nomePerso) REFERENCES Perso(nomePerso),
  FOREIGN KEY (emailUser) REFERENCES Users(emailUser)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;




