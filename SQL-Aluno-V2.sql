-- criando banco de dados
CREATE DATABASE Escola;
-- mencionando o bd que será utilizado no script
USE Escola;

-- criando tabelas
CREATE TABLE ALUNO(
	ra INT PRIMARY key, 
	nome VARCHAR(100),
	data_nascimento DATE,
	sexo CHAR(1) CHECK(sexo='F' OR sexo='M' OR sexo='I')
	);
INSERT INTO aluno (ra, nome, sexo) VALUES (1,'João','M');

INSERT INTO aluno (ra, nome, sexo) VALUES (1,'João','O');

SELECT * FROM aluno;	

CREATE TABLE DISCIPLINA(
	id_disciplina INT PRIMARY key,
	nome VARCHAR(45),
	curso VARCHAR(45),
	st VARCHAR(45)
);

CREATE TABLE TURMA(
	id_turma INT PRIMARY KEY,
	nome VARCHAR(45),
	fk_aluno INT, 
	fk_disciplina INT,
	CONSTRAINT fk_aluno_const FOREIGN KEY (fK_aluno) REFERENCES aluno (ra),
	CONSTRAINT fk_disciplina_const FOREIGN KEY (fk_disciplina) REFERENCES disciplina (id_disciplina)
);
-- criando uma indice para uma tabela
CREATE INDEX idx_aluno ON aula01.aluno(nome_completo);

-- criando uma view a partir de uma tabela
CREATE VIEW alunos_ads AS
	SELECT * FROM aluno;

-- alterando tabelas

-- adicionando uma coluna
ALTER TABLE aluno 
	ADD COLUMN sexo CHAR(1);
	
-- Exibindo as colunas de uma determinada tabela
SHOW COLUMNS FROM aluno;
-- ou
DESCRIBE aluno;
