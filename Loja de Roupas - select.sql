CREATE DATABASE Atividade05;

USE Atividade05;

CREATE TABLE Setor(
id_setor INT PRIMARY KEY AUTO_INCREMENT,
descricao VARCHAR(85)
);

CREATE TABLE Funcionario(
id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
funcao VARCHAR(25),
nome VARCHAR(50),
genero VARCHAR(50),
data_nasc DATE,
id_setor INT, 
FOREIGN KEY (id_setor) REFERENCES Setor(id_setor)
);

CREATE TABLE Pagamento(
id_funcionario INT,
agencia INT(4),
numero_conta INT(5),
id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
data_pag DATE,
valor DOUBLE,
banco VARCHAR(20),
FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario)
);

CREATE TABLE tipo_costura(
id_tipo_costura INT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(30),
tipo_agulha VARCHAR(25),
tipo_linha VARCHAR(25)
);

CREATE TABLE Maquinario(
id_maquina INT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(25),
status_maquina VARCHAR(25),
id_tipo_costura INT, 
FOREIGN KEY (id_tipo_costura) REFERENCES tipo_costura(id_tipo_costura) 
);

CREATE TABLE Roupa(
id_roupa INT AUTO_INCREMENT PRIMARY KEY,
descricao VARCHAR(100),
preco DOUBLE
);

CREATE TABLE item_pagamento(
id_pagamento INT,
id_roupa INT,
valor_total DOUBLE,
comissao DOUBLE,
FOREIGN KEY (id_pagamento) REFERENCES Pagamento(id_pagamento),
FOREIGN KEY (id_roupa) REFERENCES Roupa(id_roupa) 
);

CREATE TABLE Producao(
id_funcionario_supervisora INT AUTO_INCREMENT PRIMARY KEY,
id_funcionario INT,
id_maquina INT,
id_roupa INT,
data_hora DATE,
status_producao VARCHAR(50),
FOREIGN KEY (id_roupa) REFERENCES Roupa(id_roupa),
FOREIGN KEY (id_maquina) REFERENCES Maquinario(id_maquina),
FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario)
);

INSERT INTO Setor VALUES (01, "Setor de Maquinas");
INSERT INTO Setor VALUES (02, "Setor de Produção");

INSERT INTO Funcionario VALUES (01, "Costureira", "Lais Fontinele", "Feminino", "2003-08-25", 01);
INSERT INTO Funcionario VALUES (02, "Costureiro", "Leonardo Campos", "Masculino", "2003-07-25", 02);

INSERT INTO Pagamento VALUES (01, 0284, 15248, 01, "2023-01-23", '200.00', "PAN");
INSERT INTO Pagamento VALUES (02, 0287, 15048, 02, "2023-07-28", '260.00', "Pagbank");

INSERT INTO tipo_costura VALUES (01, "Costura simples", "Agulha média", "Linha fina");
INSERT INTO tipo_costura VALUES (02, "Costura dupla", "Agulha Grossa", "Linha grossa");

INSERT INTO Maquinario VALUES (01, "Overloque", "Quebrada", 01);
INSERT INTO Maquinario VALUES (02, "Reta", "Quebrada", 02);

INSERT INTO Roupa VALUES (01, "Mochila", '20');
INSERT INTO Roupa VALUES (02, "Coberta", '60');

INSERT INTO item_pagamento VALUES (01, 01, '20', '10');
INSERT INTO item_pagamento VALUES (02, 02, '60', '30');

INSERT INTO Producao VALUES (01, 01, 01, 01, "2023-04-26", "Finalizado");
INSERT INTO Producao VALUES (02, 02, 02, 02, "2023-04-26", "Em Andamento");

/*---------------------------------SELECT ATIVIDADE 06-------------------------------------------*/

/* Select simples */
SELECT * FROM Setor;

SELECT * FROM Funcionario;

SELECT * FROM Pagamento;

SELECT * FROM tipo_costura;

SELECT * FROM Maquinario;

SELECT * FROM Roupa;

SELECT * FROM item_pagamento;

SELECT * FROM Producao;


/* Select inner join */
SELECT * FROM Setor a INNER JOIN Funcionario b ON a.id_setor = b.id_funcionario;

SELECT * FROM Pagamento a INNER JOIN Roupa b ON a.id_pagamento = b.id_roupa;

SELECT * FROM Producao a INNER JOIN Maquinario b ON a.id_maquina = b.id_maquina;

SELECT * FROM item_pagamento a INNER JOIN tipo_costura b ON a.id_roupa = b.id_tipo_costura;


/* Select GROUP BY */
SELECT nome FROM Funcionario GROUP BY nome;


/* Select Having */
SELECT nome FROM Funcionario GROUP BY nome HAVING COUNT(nome)=1;

/* Select WHERE */
SELECT nome FROM Funcionario WHERE nome = 'Leonardo Campos';


/* Select VIEW */
CREATE VIEW ApresentaProd AS SELECT id_funcionario, id_maquina FROM Producao;
