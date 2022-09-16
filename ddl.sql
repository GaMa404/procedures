CREATE DATABASE db_procedures;
USE db_procedures;

CREATE TABLE dados_livro
(
	id INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    isbn CHAR(13) NOT NULL,
    preco DOUBLE NOT NULL,
    PRIMARY KEY (id)
); 