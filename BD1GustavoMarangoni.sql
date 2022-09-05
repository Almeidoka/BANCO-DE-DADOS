DROP DATABASE IF EXISTS agcorp;

CREATE DATABASE agcorp;

USE agcorp;

CREATE TABLE cliente(
id INT NOT NULL AUTO_INCREMENT
,nome VARCHAR(200) NOT NULL UNIQUE
,endereco VARCHAR(200) NOT NULL UNIQUE
,ativo CHAR(1) NOT NULL DEFAULT 'S'
,siglaestado CHAR(2) NOT NULL
,data_cadastro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ,cep CHAR(8) NOT NULL
-- ,telefone CHAR(11) NOT NULL
-- ,email VARCHAR(200) NOT NULL
-- ,docrg INT NOT NULL
-- ,senha VARCHAR(200) NOT NULL
-- ,sexo VARCHAR(200) NOT NULL
-- ,datanascimento INT NOT NULL
-- ,CHECK (sexo IN ('M' , 'F'))
,CONSTRAINT pk_estado PRIMARY KEY (id)
,CONSTRAINT estado_ativo_deve_ser_S_ou_N CHECK (ativo IN ('S', 'N') )
);
INSERT INTO cliente (nome,endereco,ativo,siglaestado) VALUES ('GUSTAVO','RODNEY-MESIAS','S','SP');
SELECT id,nome,endereco,siglaestado FROM cliente;

CREATE TABLE estado (
id INT NOT NULL AUTO_INCREMENT
,nome VARCHAR(200)  NOT NULL
,ativo CHAR(1) NOT NULL DEFAULT 'S' 
,data_cadastro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
,estado_id INT NOT NULL 
,CONSTRAINT pk_cidade PRIMARY KEY (id)
,CONSTRAINT fk_cidade_estado FOREIGN KEY (estado_id) REFERENCES estado (id)
,CONSTRAINT cidade_ativo_deve_ser_S_ou_N CHECK (ativo IN ('S','N'))
,CONSTRAINT cidade_unica UNIQUE(nome, estado_id)
);

