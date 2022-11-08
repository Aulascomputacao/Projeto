-- Alunos João Vitor e William
-- CRIANDO DATABASE    
CREATE DATABASE TRANSPORTADORA 

-- drop database TRANSPORTADORA -- APAGAR BANCO

-- ATIVANDO DATABASE
USE TRANSPORTADORA

-- CRIANDO TABELAS 

-- CRIANDO TABELA FUNCIONARIO
CREATE TABLE funcionario
(
	id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome varchar(100) NOT NULL,
    senha varchar(45) NOT NULL,
    email varchar(110) NOT NULL,
    telefone varchar (15) NOT NULL,
    sexo varchar(45) NOT NULL,    
    data_nasc DATE NOT NULL,
    cidade varchar(45) NOT NULL, 
    estado varchar(45) NOT NULL,
    endereco varchar(45) NOT NULL
)AUTO_INCREMENT=1;

CREATE TABLE cliente
(
	id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome varchar(100) NOT NULL,
    senha varchar(45) NOT NULL,
    email varchar(110) NOT NULL,
    telefone varchar (15) NOT NULL,
    sexo varchar(45) NOT NULL,    
    data_nasc DATE NOT NULL,
    cidade varchar(45) NOT NULL, 
    estado varchar(45) NOT NULL,
    endereco varchar(45) NOT NULL
)AUTO_INCREMENT=1;

-- CRIANDO TABELA CONDUTOR
CREATE TABLE Condutor
(
	Matricula_Motorista int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    CPF_Motorista char(11) NOT NULL,
    Nome_Motorista varchar(100) NOT NULL,
    Numero_Habilitação varchar(20) NOT NULL,
    Data_Primeira_Habilitacao DATE NOT NULL, 
    Validade_Habilitacao DATE NOT NULL,
    Categoria varchar (10) NOT NULL,
    Telefone_Motorista varchar (12) NOT NULL, 
    Numero_Emergencia varchar(12) NOT NULL 
)AUTO_INCREMENT=1;

-- CRIANDO TABELA VEICULO
CREATE TABLE Veiculo
(
	Cod_Veiculo int AUTO_INCREMENT PRIMARY KEY,
    Renavan char(11) NOT NULL,
    Marca varchar(30) NOT NULL,
    Modelo varchar(30) NOT NULL,
    Ano char(4) NOT NULL, 
    Situacao varchar(20)NOT NULL, -- Proprio, alugado....
    CNPJ_Proprietario char(14),
    CPF_Proprietario char(11) 

)AUTO_INCREMENT=1;

-- CRIANDO TABELA SERVICO
CREATE TABLE Servico
(
	Cod_Entrega int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Logradouro varchar(200) NOT NULL,
    Complemento varchar(100),
    Cidade varchar(20) NOT NULL,
    Numero int NOT NULL,
    Bairro varchar (50) NOT NULL,
    Cep char(8) NOT NULL
)AUTO_INCREMENT=1;

-- CRIANDO TABELA FILIAL
CREATE TABLE Filial
(
	Cod_Filial int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nome_Estado varchar(30) NOT NULL,
    Nome_Cidade varchar(30) NOT NULL
)AUTO_INCREMENT=1;

-- INSERTS
-- INSERT Funcionario
INSERT INTO funcionario (nome,senha,email,telefone,sexo,data_nasc,cidade,estado,endereco) VALUES ('adm','adm','adm',0,'0',STR_TO_DATE('0-00-0000', '%d-%m-%Y'),'0','0','0');

-- INSERT CONDUTOR
INSERT INTO Condutor (CPF_Motorista,Nome_Motorista,Numero_Habilitação,Data_Primeira_Habilitacao,Validade_Habilitacao,Categoria,Telefone_Motorista,Numero_Emergencia) VALUES (11111111111,'Vilmar',11111,STR_TO_DATE('1-01-2015', '%d-%m-%Y'),STR_TO_DATE('1-01-2025', '%d-%m-%Y'),'B',111111111111,111111111111);
INSERT INTO Condutor (CPF_Motorista,Nome_Motorista,Numero_Habilitação,Data_Primeira_Habilitacao,Validade_Habilitacao,Categoria,Telefone_Motorista,Numero_Emergencia) VALUES (22222222222,'Uilson',22222,STR_TO_DATE('2-01-2013', '%d-%m-%Y'),STR_TO_DATE('2-01-2022', '%d-%m-%Y'),'A',222222222222,222222222222);
INSERT INTO Condutor (CPF_Motorista,Nome_Motorista,Numero_Habilitação,Data_Primeira_Habilitacao,Validade_Habilitacao,Categoria,Telefone_Motorista,Numero_Emergencia) VALUES (33333333333,'Leandro',33333,STR_TO_DATE('3-01-2000', '%d-%m-%Y'),STR_TO_DATE('3-01-2023', '%d-%m-%Y'),'B',333333333333,333333333333);
INSERT INTO Condutor (CPF_Motorista,Nome_Motorista,Numero_Habilitação,Data_Primeira_Habilitacao,Validade_Habilitacao,Categoria,Telefone_Motorista,Numero_Emergencia) VALUES (44444444444,'JOAO',44444,STR_TO_DATE('4-01-2011', '%d-%m-%Y'),STR_TO_DATE('4-01-2024', '%d-%m-%Y'),'E',444444444444,444444444444);
INSERT INTO Condutor (CPF_Motorista,Nome_Motorista,Numero_Habilitação,Data_Primeira_Habilitacao,Validade_Habilitacao,Categoria,Telefone_Motorista,Numero_Emergencia) VALUES (55555555555,'MARIA',55555,STR_TO_DATE('5-01-2012', '%d-%m-%Y'),STR_TO_DATE('5-01-2030', '%d-%m-%Y'),'B',555555555555,555555555555);
INSERT INTO Condutor (CPF_Motorista,Nome_Motorista,Numero_Habilitação,Data_Primeira_Habilitacao,Validade_Habilitacao,Categoria,Telefone_Motorista,Numero_Emergencia) VALUES (66666666666,'JOSE',66666,STR_TO_DATE('6-01-2010', '%d-%m-%Y'),STR_TO_DATE('6-01-2028', '%d-%m-%Y'),'A',666666666666,666666666666);
INSERT INTO Condutor (CPF_Motorista,Nome_Motorista,Numero_Habilitação,Data_Primeira_Habilitacao,Validade_Habilitacao,Categoria,Telefone_Motorista,Numero_Emergencia) VALUES (77777777777,'RUBEM',77777,STR_TO_DATE('7-01-2009', '%d-%m-%Y'),STR_TO_DATE('7-01-2027', '%d-%m-%Y'),'B',777777777777,777777777777);

-- INSERT VEICULO
INSERT INTO Veiculo (Renavan,Marca,Modelo,Ano,Situacao,CNPJ_Proprietario) VALUES (11111111111,'Chevrolet','Tracker','2022','Proprio',12121212121);
INSERT INTO Veiculo (Renavan,Marca,Modelo,Ano,Situacao,CNPJ_Proprietario) VALUES (22222222222,'Volvo','FH-500','2020','Proprio',12121212121);
INSERT INTO Veiculo (Renavan,Marca,Modelo,Ano,Situacao,CNPJ_Proprietario) VALUES (33333333333,'Toyota','Corola','2021','Proprio',12121212121);

-- INSERT SERVICO
INSERT INTO Servico (Logradouro,Complemento,Cidade,Numero,Bairro,Cep) VALUES ('Caminho 1','Perto do posto','Salvador',11,'Centro',12345678);
INSERT INTO Servico (Logradouro,Complemento,Cidade,Numero,Bairro,Cep) VALUES ('Caminho 2','Perto do posto','Salvador',22,'POC',12345678);
INSERT INTO Servico (Logradouro,Complemento,Cidade,Numero,Bairro,Cep) VALUES ('Caminho 4','Perto do posto','São paulo',22,'Radial',12121212);
INSERT INTO Servico (Logradouro,Complemento,Cidade,Numero,Bairro,Cep) VALUES ('Caminho 5','Perto do posto','Salvador',44,'Poc',12345678);
INSERT INTO Servico (Logradouro,Complemento,Cidade,Numero,Bairro,Cep) VALUES ('Caminho 5','Perto do posto','Fortaleza',55,'Limoeiro',13131313);
INSERT INTO Servico (Logradouro,Complemento,Cidade,Numero,Bairro,Cep) VALUES ('Caminho 6','Perto do posto','Fortaleza',66,'Rodoviaria',13131313);
INSERT INTO Servico (Logradouro,Complemento,Cidade,Numero,Bairro,Cep) VALUES ('Caminho 7','Perto do posto','São paulo',77,'Centro',12121212);

 -- INSERT FILIAL
INSERT INTO Filial (Nome_Estado,Nome_Cidade) VALUES ('Bahia','Salvador');
INSERT INTO Filial (Nome_Estado,Nome_Cidade) VALUES ('São Paulo','São paulo');
INSERT INTO Filial (Nome_Estado,Nome_Cidade) VALUES ('Rio de Janeiro','Belfo Roxo');
INSERT INTO Filial (Nome_Estado,Nome_Cidade) VALUES ('Ceara','Fortaleza');
INSERT INTO Filial (Nome_Estado,Nome_Cidade) VALUES ('Acre','Rio Braco');
INSERT INTO Filial (Nome_Estado,Nome_Cidade) VALUES ('Rondonia','Porto Velho');
INSERT INTO Filial (Nome_Estado,Nome_Cidade) VALUES ('RORAIMA','Boa Vista');  




