CREATE TABLE Denuncias (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Email VARCHAR(255) NOT NULL,
    CPF VARCHAR(11) NOT NULL,
    ImagemDenuncia BLOB, -- BLOB é usado para armazenar dados binários (imagens)
    Descricao TEXT
);
INSERT INTO Denuncias (Email, CPF, ImagemDenuncia, Descricao)
VALUES ('exemplo@email.com', '12345678901', 'conteúdo_da_imagem_em_formato_binário', 'Descrição da denúncia');
