drop database dbLivrarias;
show databases;
create database dbLivrarias;
use dbLivrarias;

create table tbAlunos(
raluno int, 
nome varchar(45),
email varchar(45),
telefone varchar(45)
);

create table tbLivros(
isbn int,
nome varchar(45),
autor varchar(45),
paginas varchar(45),
aluno_raluno int,
colaborador_id_colaborador int
);

create table tbColaboradores(
id_colaborador int,
cpf varchar(45),
nome varchar(45),
email varchar(45),
cargo varchar(45)
);

create table tbEmprestimos(
idEmprestimo int,
data_emprestimo date,
data_devolucao date,
livro_isbn varchar(45),
colaborador_cpf varchar(45),
colaboradorcr_id_colaborador int
);

desc tbAlunos;
desc tbLivros;
desc tbColaboradores;
desc tbEmprestimos;