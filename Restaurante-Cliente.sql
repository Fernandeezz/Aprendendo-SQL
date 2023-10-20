/* Criação de um SQL entre clientes e Restaurantes */

CREATE DATABASE IFOOD;

USE IFOOD;

CREATE TABLE Usuario(
idUsuario INT AUTO_INCREMENT,
nome VARCHAR(50),
cpf INT(11),
logradouro VARCHAR(50),
cep VARCHAR(50),
numCasa VARCHAR(5),
cidade VARCHAR(50),
bairro VARCHAR(50), 
estado VARCHAR(50), 
telefone VARCHAR(20) PRIMARY KEY
);

CREATE TABLE Restaurante(
idRestaurante INT PRIMARY KEY,
nomeRestaurante VARCHAR(50),
cidade VARCHAR(50),
estado VARCHAR(50),
logradouro VARCHAR(50),
numero VARCHAR(5),
cep VARCHAR(20),
telefone VARCHAR(20)
);

CREATE TABLE pedido(
enderecoUsuario VARCHAR(50),
enderecoRestaurante VARCHAR(50),
idRestaurante INT,
idPedido int PRIMARY KEY,
FOREIGN KEY (idRestaurante) REFERENCES Restaurante(idRestaurante)
);

CREATE TABLE entregador(
telefoneCliente VARCHAR(50),
enderecoRestaurante VARCHAR(50),
enderecoCliente VARCHAR(50),
telefoneRestaurante VARCHAR(50),
idEntregador int PRIMARY KEY,
idPedido INT,
FOREIGN KEY (idPedido) REFERENCES pedido(idPedido),
FOREIGN KEY (telefoneCliente) REFERENCES cliente(telefone)
);
