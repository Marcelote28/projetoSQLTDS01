
drop database dbMapas;
create database dbMapas;


use dbMapas;
show databases;

create table tbBairros(
id int(11),
nome varchar(100),
cidade_id int(11)

);

create table tbEnderecos(
id Bigint(20),
bairro_id int(11),
tipo_local varchar(15),
logradouro varchar(128),
numero int(11),
complemento varchar(255)
);

create table tbPontos(
id Bigint(20),
endereco_id Bigint(20)
);

create table tbCidades(
id int(11),
nome varchar(38),
estado_id int(11)

);

create table tbServicos(
id Bigint(20),
endereco_id Bigint(20),
solicitante_id Bigint(20)

);

create table tbSolicitantes(
id Bigint(20),
endereco_id Bigint(20));

create table tbEstados(
id int(11),
sigla char(2));

desc tbEnderecos;
desc tbBairros;
desc tbPontos;
desc tbCidades;
desc tbServicos;
desc tbSolicitantes;
desc tbestados;
