/* Criação de um Database de Usuários com Alter Table */

CREATE DATABASE LOGINUSER; 

USE LOGINUSER; 

CREATE TABLE Usuario( 
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
nome VARCHAR(100), 
data_nascimento DATE, 
email VARCHAR(50), 
genero VARCHAR (30), 
telefone VARCHAR (20), 
logradouro VARCHAR (100), 
cidade VARCHAR (50), 
estado VARCHAR(50), 
num_casa INT(7), 
cep VARCHAR(9) 
); 

ALTER TABLE Usuario RENAME to Cliente; 

ALTER TABLE Cliente ADD COLUMN CPF VARCHAR(14); 
