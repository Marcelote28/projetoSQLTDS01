-- Apagar o banco de dados se existir
drop database dbLanchonete;

-- criar um bando de dados
create database dbLanchonete;

-- Visualizar bando de dados
show databases; 


-- Acessar o bando de dados
use dbLanchonete;

-- Visualizando as tabelas
show tables;

-- Criando as tabelas para o banco de dados
create table tbUsuarios(
CodUsu int, 
nome varchar(30),
senha varchar(12));
 
create table tbFuncionarios(
logradoro vachar(100),
numero char(10),
complemento varchar(50),
bairro varchar(100),
cep char(9),
cidade varchar(100),
estado char(2));



-- Visualizar a ESTRUTURA da tabela
desc tbUsuarios;
desc tbFuncionarios;
	

 	