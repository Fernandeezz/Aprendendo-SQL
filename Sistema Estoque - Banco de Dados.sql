CREATE DATABASE IF NOT EXISTS bdEstoque;
USE bdEstoque;
 
CREATE TABLE IF NOT EXISTS Endereco (
    id_endereco INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    logradouro VARCHAR(255) NOT NULL,
    numero INT,
    complemento VARCHAR(255),
    cidade VARCHAR(255) NOT NULL,
    estado VARCHAR(255) NOT NULL,
    cep VARCHAR(10) NOT NULL
);
 
CREATE TABLE IF NOT EXISTS Mercado (
    nome_fantasia VARCHAR(255) UNIQUE NOT NULL,
    cnpj VARCHAR(14) PRIMARY KEY NOT NULL ,
    razao_social VARCHAR(255) UNIQUE NOT NULL,
    whatsapp VARCHAR(15) UNIQUE,
    id_endereco INT,
    FOREIGN KEY (id_endereco) REFERENCES Endereco(id_endereco)
);
 
CREATE TABLE IF NOT EXISTS Estoque (
    id_estoque INT PRIMARY KEY UNIQUE AUTO_INCREMENT,
    id_mercado VARCHAR(14) NOT NULL,
    status VARCHAR(255)  NOT NULL,
    localizacao VARCHAR(255),
    data_inicio DATE,
    FOREIGN KEY (id_mercado) REFERENCES Mercado(cnpj)
);
 
 
CREATE TABLE IF NOT EXISTS Categoria (
    id_categoria INT PRIMARY KEY UNIQUE AUTO_INCREMENT,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao_categoria VARCHAR(255),
    setor VARCHAR(255),
    id_estoque INT,
    FOREIGN KEY (id_estoque) REFERENCES Estoque(id_estoque)
);
 
 
CREATE TABLE IF NOT EXISTS Produto (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(255) NOT NULL,
    codigo_barras VARCHAR(20) UNIQUE NOT NULL,
    descricao VARCHAR(255),
    preco_unitario DECIMAL(10, 2),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
);
INSERT INTO Endereco (logradouro, numero, complemento, cidade, estado, cep) VALUES
('Rua Jeremy', 20, 'Loja', 'Guarulhos', 'SP', '07241-603'),
('Rua Costa Barros', 400, 'Loja', 'São Paulo', 'SP', '03210-000'),
('Rua Laura Bossi', 99, NULL, 'São Paulo', 'SP', '08250-730'),
('Avenida Ipiranga', 11, 'Loja', 'São Paulo', 'SP', '01046-010'),
('Avenida São miguel', 654, 'Sobreloja', 'São Paulo', 'SP', '03871-100');


INSERT INTO Mercado (nome_fantasia, cnpj, razao_social, whatsapp, id_endereco) VALUES
('Mercado Alegria', '12345678000134', 'Alegria LTDA', '1134567890', 1),
('Mercado CompreMaxx', '56789012000178', 'Sociedade CompreMaxx LDTA', '+9876543210', 2),
('Mercado da Família', '90123456000112', 'Familia Santos ME', '+1112223333', 3),
('Mercado Século XX', '34567890000156', 'Seculo XX SA', '+4445556666', 4),
('Dez Mil', '7890123000190', 'Rede 10 mil LTDA', '+7778889999', 5);


INSERT INTO Estoque (id_mercado, status, localizacao, data_inicio) VALUES
('12345678000134', 'Ativo', 'Pereciveis', '2023-01-01'),
('12345678000134', 'Ativo', 'Hortifruti', '2023-02-15'),
('12345678000134', 'Ativo', 'Dispensa', '2023-03-30'),
('12345678000134', 'Ativo', 'Limpeza', '2023-04-10'),
('12345678000134', 'Ativo', 'Casa', '2023-05-20');


INSERT INTO Categoria (nome_categoria, descricao_categoria, setor, id_estoque) VALUES
('Eletrônicos', 'Categoria de produtos eletrônicos', 'Tecnologia', 1),
('Alimentos', 'Categoria de alimentos', 'Alimentício', 3),
('Roupas', 'Categoria de vestuário', 'Moda', 5),
('Móveis', 'Categoria de móveis', 'Decoração', 4),
('Hortifruti', 'Legumes e Frutas', 'Alimentício', 2);


INSERT INTO Produto (nome_produto, codigo_barras, descricao, preco_unitario, id_categoria) VALUES
('Feijão', '123456789012', 'Feijão carioca 1kg', 6.99, 2),
('Arroz', '234567890123', 'Arroz branco 1kg', 5.99, 2),
('Camiseta', '345678901234', 'Camiseta preta tamanho M', 19.99, 3),
('Sofá', '456789012345', 'Sofá de couro', 499.99, 4),
('Tomate', '567890123456', 'Tomate Carmem', 12.99, 5);
