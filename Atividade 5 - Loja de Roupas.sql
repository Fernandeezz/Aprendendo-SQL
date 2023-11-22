CREATE DATABASE LojaDeRoupas;

USE LojaDeRoupas;

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

/*insert setor*/
INSERT INTO Setor VALUES (01, "Setor de Maquinas");
INSERT INTO Setor VALUES (02, "Setor de Produção");

/*insert funcionário*/
INSERT INTO Funcionario VALUES (01, "Costureira", "Fernanda Fernandes", "Feminino", "2003-12-27", 01);
INSERT INTO Funcionario VALUES (02, "Costureiro", "Alexandre Silva", "Masculino", "2000-02-20", 02);

/*insert pagamento*/
INSERT INTO Pagamento VALUES (01, 0284, 15248, 01, "2023-11-22", '20.00', "Santander");
INSERT INTO Pagamento VALUES (02, 0287, 15048, 02, "2023-08-22", '60.00', "Nubank");

/*insert Tipo Costura*/
INSERT INTO tipo_costura VALUES (01, "Costura Trançada", "Agulha Fina", "Linha Nylon");
INSERT INTO tipo_costura VALUES (02, "Costura Embutidaçada", "Agulha Grossa", "Linha de Roca");

/*insert Maquinário*/
INSERT INTO Maquinario VALUES (01, "Overloque", "Operando", 01);
INSERT INTO Maquinario VALUES (02, "Reta", "Quebrada", 02);

/*insert Roupa*/
INSERT INTO Roupa VALUES (01, "Camiseta de Manga Longa", '20');
INSERT INTO Roupa VALUES (02, "Edredom", '60');

/*insert Item Pagamento*/
INSERT INTO item_pagamento VALUES (01, 01, '20', '10');
INSERT INTO item_pagamento VALUES (02, 02, '60', '30');

/*insert Produção*/
INSERT INTO Producao VALUES (01, 01, 01, 01, "2023-04-26", "Finalizado");
INSERT INTO Producao VALUES (02, 02, 02, 02, "2023-04-26", "Em Andamento");


/*---------------------------------SELECT ATIVIDADE 06-------------------------------------------*/

/* Select simples */
SELECT * FROM Setor;-

SELECT * FROM Funcionario;-

SELECT * FROM Pagamento;-

SELECT * FROM tipo_costura;

SELECT * FROM Maquinario;-

SELECT * FROM Roupa;-

SELECT * FROM item_pagamento;

SELECT * FROM Producao;-


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
SELECT nome FROM Funcionario WHERE nome = 'Alexandre Silva';


/* Select VIEW */
CREATE VIEW ApresentaProd AS SELECT id_funcionario, id_maquina FROM Producao;