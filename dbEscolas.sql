drop database dbEscolas;
create database dbEscolas;
use dbEscolas;

create table tbcursoAlunos(
curso_idCurso int,
Aluno_idAluno int);

create table tbAlunos(
idAluno int,
nome varchar(45),
email varchar(45),
cpf int,
endereco varchar(45),
numero int,
complemento varchar(45),
cidade varchar(45),
estado varchar(45));

create table tbCursos(
idCurso int,
nome varchar(45),
professor_idProfessor int);

create table tbProfessores(
idprofessor int,
nome varchar(45),
email varchar(45),
cpf int,
endereco varchar(45),
numero int,
complemento varchar(45),
cidade varchar(45),
estado varchar(45));

desc tbCursos;
desc tbAlunos;
desc tbcursoAlunos;
desc tbProfessores;
