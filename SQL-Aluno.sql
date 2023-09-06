CREATE DATABASE Escola;

Use Escola;

CREATE TABLE disciplina
(
idDisciplina INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
nomeDisciplina VARCHAR (50) NOT NULL,
horario FLOAT(10) NOT NULL
);
 
 CREATE TABLE Aluno 
 (
 idRA INT(50) PRIMARY KEY NOT NULL AUTO_INCREMENT, 
 nomeDoAluno VARCHAR(50) NOT NULL,
 dataDeNasc VARCHAR(50) NOT NULL, 
 telefone VARCHAR(50) NOT NULL,
 email VARCHAR(50) NOT NULL
 
 );
 
 
 CREATE TABLE notaDoALuno
 (
 notaDoAluno FLOAT(40) NOT NULL,
 idnota INT(50) PRIMARY KEY NOT NULL AUTO_INCREMENT,
 idRA INT,
 idDisciplina INT,
 FOREIGN KEY (idDisciplina) REFERENCES disciplina(idDisciplina),
 FOREIGN KEY (idRA) REFERENCES Aluno(idRA)
 );


