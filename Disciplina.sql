CREATE DATABASE CURSO;

USE CURSO;

CREATE TABLE disciplina (
    idDisciplina INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nomeDisciplina VARCHAR(20),
    horario VARCHAR(5)
);

CREATE TABLE aluno (
    id_Ra INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    dataNascimento VARCHAR(10),
    telefone VARCHAR(11),
    email VARCHAR(100) NOT NULL
);

CREATE TABLE nota (
    dataNota VARCHAR(12),
    notaAluno FLOAT(10),
    id_Ra INTEGER NOT NULL,
    idDisciplina INTEGER NOT NULL,
    CONSTRAINT idNota PRIMARY KEY (id_Ra, idDisciplina),
    FOREIGN KEY (id_Ra) REFERENCES aluno (id_Ra),
    FOREIGN KEY (idDisciplina) REFERENCES disciplina (idDisciplina)
);
