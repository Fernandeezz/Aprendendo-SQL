CREATE DATABASE aula11; 

USE aula11;

CREATE TABLE tabelaA(
	Nome varchar(50)
);

CREATE TABLE tabelaB(
	Nome varchar(50)
);

INSERT INTO tabelaA VALUES ("SILVIA");
INSERT INTO tabelaA VALUES ("CLÁUDIO");
INSERT INTO tabelaA VALUES ("THAIS");
INSERT INTO tabelaA VALUES ("IVETE");

INSERT INTO tabelaB VALUES ("SILVIO");
INSERT INTO tabelaB VALUES ("CLÁUDIA");
INSERT INTO tabelaB VALUES ("THAIS");
INSERT INTO tabelaB VALUES ("IVETE");

SELECT * FROM tabelaA;
SELECT * FROM tabelaB;

/*Cross join*/
SELECT * FROM tabelaA, tabelaB;

/*Equi Join*/
SELECT * FROM tabelaA a, tabelaB b WHERE a.Nome = b.Nome;

/*INNER JOIN*/
SELECT a.Nome, b.Nome FROM tabelaA as a INNER JOIN tabelaB as B on a.Nome = b.Nome;
SELECT * FROM tabelaA a INNER JOIN tabelaB b ON a.Nome = b.Nome;

/*LEFT JOIN*/
SELECT a.Nome, b.Nome FROM tabelaA as a LEFT JOIN tabelaB as B on a.Nome = b.Nome;
SELECT * FROM tabelaA a LEFT JOIN tabelaB b ON a.Nome = b.Nome;

/*RIGHT JOIN*/
SELECT a.Nome, b.Nome FROM tabelaA as a RIGHT JOIN tabelaB as B on a.Nome = b.Nome;
SELECT * FROM tabelaA a RIGHT JOIN tabelaB b ON a.Nome = b.Nome;

/*LEFT OUTER JOIN*/
SELECT a.Nome, b.Nome FROM tabelaA as a LEFT JOIN tabelaB as B on a.Nome = b.Nome;
SELECT * FROM tabelaA a LEFT JOIN tabelaB b ON a.Nome = b.Nome WHERE b.Nome is null;

/*RIGHT OUTER JOIN*/
SELECT a.Nome, b.Nome FROM tabelaA as a RIGHT JOIN tabelaB as B on a.Nome = b.Nome;
SELECT * FROM tabelaA a RIGHT JOIN tabelaB b ON a.Nome = b.Nome WHERE a.Nome is null;

/*OUTER JOIN - Apresenta as igualdades e diferenças*/

-- SEM WHERE
SELECT * FROM tabelaA a RIGHT JOIN tabelaB b ON a.Nome = b.Nome
UNION
SELECT * FROM tabelaA a LEFT JOIN tabelaB b ON a.Nome = b.Nome;

-- COM WHERE
SELECT * FROM tabelaA a LEFT JOIN tabelaB b ON a.Nome = b.Nome WHERE b.Nome is null
UNION
SELECT * FROM tabelaA a RIGHT JOIN tabelaB b ON a.Nome = b.Nome WHERE a.Nome is null;
