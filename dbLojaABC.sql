-- Apagar o banco de dados
drop database dbLojaABC;
-- Criar o banco de dados
create database dbLojaABC;
-- Acessar o banco de dados
use dbLojaABC; 
-- Criar as tabelas
create table tbFuncionarios(
codFunc int,
nome varchar(100),
email varchar(100),
cpf char(14),
endereco varchar(100),
cep char(9),
numero char(10),
bairro varchar(100),
ciade varchar(100),
estado char(2),
telefone char(10),
dataNasc date,
salario decimal(9,2));

insert into tbFuncionarios (nome, email,cpf,endereco,cep,numero,birro,cidade,estado,telefone,dataNasc,salario)values();'Francisca da Silva','frasncisa.silva@hotmail.com','458.586.987-88','Rua Dr. Antonio Bento','04750-000','355','Santa Amaro','São Paulo','SP','93737-3737','2000/10/31',1500.50);
--Visualizando as tabelas
show tables; 
-- Visualizando a estrutura das tabelas
desc tbFuncionarios;
-- Inserir registros no banco de dados
select * from tbFuncionarios;
