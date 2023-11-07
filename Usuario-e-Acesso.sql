/*Criando um usuário que tenha total acesso ao banco de dados*/

CREATE USER 'Fernanda'@'127.0.0.1' identified BY 'abc123';
GRANT ALL PRIVILEGES ON aula10. * TO 'Fernanda'@'127.0.0.1';
