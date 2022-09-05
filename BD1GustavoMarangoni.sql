DROP DATABASE IF EXISTS agcorp;

CREATE DATABASE agcorp;

USE agcorp;

CREATE TABLE cliente(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT
,nome VARCHAR(200) NOT NULL
,endereco VARCHAR(200) NOT NULL
,cidade VARCHAR(200) NOT NULL
,estado CHAR(2) NOT NULL
-- ,cep CHAR(8) NOT NULL
-- ,telefone CHAR(11) NOT NULL
-- ,email VARCHAR(200) NOT NULL
-- ,docrg INT NOT NULL
-- ,senha VARCHAR(200) NOT NULL
-- ,sexo VARCHAR(200) NOT NULL
-- ,datanascimento INT NOT NULL
-- ,CHECK (sexo IN ('M' , 'F'))
);
INSERT INTO cliente (nome,endereco,cidade,estado) VALUES ('GUSTAVO','RODNEY-MESIAS','MORRO-AGUDO','SP');
SELECT id,nome,endereco,cidade,estado FROM cliente;


