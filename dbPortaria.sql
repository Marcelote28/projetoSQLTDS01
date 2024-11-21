drop database dbPortaria; 

create database dbPortaria;

use dbPortaria;

create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(100) not null,
rg char(13) unique,
cpf char(14) not null unique,
sexo char(1) default 'F' check(sexo in('F','M')),
salario decimal(9,2) default 0 check(salario >=0),
primary key(codFunc));

create table tbusuarios(
codUsu int not null auto_increment,
nome varchar(50) not null,
senha varchar(20) not null,
codFunc int not null,
primary key(codUsu),
foreign key(codFunc)references tbFuncionarios(codFunc));

create table tbClientes(
codCli int not null auto_increment,
nome varchar(50),
email varchar(50),
telCel char(10),
primary key(codCli));



create table tbFornecedores(
codForn int not null auto_increment,
nome varchar(100),
email varchar(100),
telefone char(10),
cnpj char(14) not null unique,
primary key(codForn));

create table tbProdutos(
codProd int not null auto_increment,
descricao varchar(100) not null,
lote char(12),
validade date,
dataEntr date, 
horaEntr time,
quantidade int,
preco decimal(9,2),
codForn int not null,
primary key(codProd),
foreign key(codForn)references tbFornecedores(codForn));

create table tbVendas(
codVend int not null auto_increment,
valor decimal(9,2),
dataVend date,
horaVend time,
codUsu int not null,
codProd int not null,
codCli int not null,
primary key(codVend),
foreign key(codUsu)references tbUsuarios(codUsu),
foreign key(codProd)references tbProdutos(codProd),
foreign key(codCli)references tbClientes(codCli));



desc tbVendas;
desc tbUsuarios;
desc tbFuncionarios;
desc tbFornecedores;
desc tbClientes;
desc tbProdutos;

-- Insert Funcionarios

insert into tbFuncionarios(nome,rg,cpf,sexo,salario)
	values('Matheus Melo','52.741.528-7','425-785-985-77','M',2500.45);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario) 
	values('Marcelo Ferreira','50.905.514-8','654-321-789-88','M',90700.00);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario) 
	values('Ronaldo Fernandes','40.123.571-7','789-654-123-77','M',6565.77);

-- Insert Clientes

insert into tbClientes(nome,email,telCel)
	values('joana Antunes','joana.antunes@hotmail.com','95248-78597');


-- Insert Fornecedores


insert into tbFornecedores(nome,email,telefone,cnpj)
	values('Armarinho Fernandez','sac@afernandez.com.br','98523-8745','48.076.228/0001-91');
insert into tbFornecedores(nome,email,telefone,cnpj)
	values('TecnoSolutions','contato@tecnosolutions.com.br','(11)4002-8922','12.345.678/0001-90');
insert into tbFornecedores(nome,email,telefone,cnpj)
	values(' SuperTec','vendas@supertec.com.br','(21)3030-2020','98.765.432/0001-12');
insert into tbFornecedores(nome,email,telefone,cnpj)
	values('Alpha Distributors','comercial@alphadistributors.com.br','(31)3221-3344','23.456.789/0001-34');
insert into tbFornecedores(nome,email,telefone,cnpj)
	values('NovaEquip','atendimento@novaequip.com.br','(41)5555-1234','56.789.012/0001-56');

-- Usuarios

insert into tbUsuarios(nome,senha,codFunc)
	values('Marcelo Ferreira','1234655',2);

-- Insert Produtos

insert into tbProdutos(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn)
	values('Papel sulfite','524515','2030/11/19','2024/11/21','11:46:00',10,25.35,1);


insert into tbProdutos(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn)
	values('Whey Protein','578614','2025/12/25','2024/11/19','14:30.00','50',189.77,2);


insert into tbProdutos(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn)
	values('Creatina Growth','878854','2026/01/17','2024/11/17','22:37.54',100,117.00,3);


insert into tbProdutos(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn)
	values('Pré-Treino Haze','884456','2027/12/30','2024/11/16','08:45.41',50,103.50,4);

 
insert into tbProdutos(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn)
	values('BCAA Growth','117514','2035/08/25','2024/11/15','08:17.41',100,63.00,5);

-- Insert Vendas


insert into tbVendas(valor,dataVend,horaVend,codUsu,codProd,codCli)
	values(10.50,'2024/11/21','08:30:05',1,2,1);


insert into tbVendas(valor,dataVend,horaVend,codUsu,codProd,codCli)
	values(10.50,'2024/11/22','08:35:05',1,3,1);


insert into tbVendas(valor,dataVend,horaVend,codUsu,codProd,codCli)
	values(10.50,'2024/11/23','09:30:05',1,4,1);


insert into tbVendas(valor,dataVend,horaVend,codUsu,codProd,codCli)
	values(10.50,'2024/11/25','10:30:05',1,5,1);

insert into tbVendas(valor,dataVend,horaVend,codUsu,codProd,codCli)
	values(10.50,'2024/11/25','10:30:05',1,5,1);

select * from tbFuncionarios;
select * from tbFornecedores;
select * from tbClientes;
select * from tbUsuarios;
select * from tbProdutos;
select * from tbVendas;
