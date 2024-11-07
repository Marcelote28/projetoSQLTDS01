-- Apagar o db
drop database dbEstacionamento; 
-- criar o db
create database dbEstacionamento;
-- Acessar o banco de dados
use dbEstacionamento;
-- Criar as tabelas
create table tbusuarios(
codUsu int,
nome varchar(50)
senha varchar(12));
create table tbfuncionarios(
coedFunc int,
nome varchar(100),
email varchar(100),
telefone char(10));
create table TbCarros(
codCar int,
nome varchar(100),
placa char(7),
cor varchar(20)
);
create table tbDiarias(
codDia int,
dataEntrada date,
horaEntrada time,
dataSaida date,
horaSaida time
);

--Visualizando a estrutura das tabelas
desc tbFuncionarios;
describe TbCarros;
describe tbDiarias;

-- Alterando estrutura das tabelas
alter table tbFuncionarios
add cpf char(14);

alter table tbFuncionarios
add salario decimal(9,2);


desc tbFuncionarios;

