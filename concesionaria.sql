CREATE DATABASE concesionaria;

Use concesionaria;

CREATE TABLE cliente (
nome VARCHAR(55),
telefone INT(12),
cpf CHAR(15) PRIMARY KEY UNIQUE,
logradouro VARCHAR(50), 
numero_casa INT(5),
bairro VARCHAR(50),
cidade VARCHAR(50),
estado VARCHAR(3)
);

CREATE TABLE veiculo (
renavan INT(11) PRIMARY KEY UNIQUE,
chassi VARCHAR(20),
modelo VARCHAR(20),
cor VARCHAR(15),
id_Cliente CHAR(15),
CONSTRAINT id_Cliente FOREIGN KEY(id_Cliente) REFERENCES cliente (cpf)
);

CREATE TABLE relato_cliente(
id_Veiculo INT(11),
id_Relato INT PRIMARY KEY UNIQUE AUTO_INCREMENT,
problema VARCHAR(200),
data DATE,
CONSTRAINT id_Veiculo FOREIGN KEY(id_Veiculo) REFERENCES veiculo (renavan)
);

CREATE TABLE orcamento(
id_Orcamento INT(11) PRIMARY KEY UNIQUE AUTO_INCREMENT, 
data_orca DATE,
Previsa_Entrega DATE,
Forma_pagamento VARCHAR(20),
idVeiculo INT(11),
CONSTRAINT idVeiculo FOREIGN KEY(idVeiculo) REFERENCES veiculo (renavan)
);

CREATE TABLE servico(
id_Servico INT(11) PRIMARY KEY UNIQUE AUTO_INCREMENT,
descricao VARCHAR(500),
tempo_realizado DATE,
custo VARCHAR(11)
);

CREATE TABLE produto(
id_Produto INT(11) PRIMARY KEY UNIQUE AUTO_INCREMENT,
custo_prod INT(11),
descricao VARCHAR(500)
);

CREATE TABLE itens_service_one(
idServico INT(11),
idOrcamento INT(11),
situacao VARCHAR(500),
custo INT(20),
CONSTRAINT idServico FOREIGN KEY(idServico) REFERENCES servico (id_Servico),
CONSTRAINT idOrcamento FOREIGN KEY(idOrcamento) REFERENCES orcamento (id_Orcamento)
);

CREATE TABLE itens_product(
quantidade INT(15),
custo_product INT(11),
situacao VARCHAR(200),
idOrca INT(11),
idPro INT(11),
CONSTRAINT idOrca FOREIGN KEY(idOrca) REFERENCES orcamento (id_Orcamento),
CONSTRAINT idPro FOREIGN KEY(idPro) REFERENCES produto (id_Produto)
);

ALTER TABLE veiculo ADD ano INT(4);

ALTER TABLE cliente 
RENAME COLUMN nome TO nome_Completo; 

DROP TABLE cliente;

DROP TABLE veiculo;

DROP TABLE relato_cliente;

DROP TABLE orcamento;

DROP TABLE servico;

DROP TABLE produto;

DROP TABLE itens_service_one;

DROP TABLE itens_product;