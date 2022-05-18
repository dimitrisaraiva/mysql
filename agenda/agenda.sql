/**
	Agenda de contatos
    @author Dimitri Saraiva
*/

-- Verificar banco de dados    
show databases;

-- Criar um novo banco de dados
create database teste;
create database agendaDimitri;

-- Excluir um banco de dados
drop database teste;

-- Selecionar o banco de dados
use agendaDimitri;

-- Criando uma tabela
-- int ->tipo de dados - numeros inteiros
-- decimal(10,2) -> tipo de dados - numeros nao inteiros
-- (10,2) 10 digitos com 2 casas decimais 
-- primary key (transforma o campo em chave primaria)
-- auto_increment (numeração automatica)
-- varchar(255) -> tipo de dados String (com variação)
-- char(255) -> tipo de dados String (sem variação)
-- (255) -> maximo de caracter
-- not null (obrigatorio o preenchimento)

create table contato (
	id int primary key auto_increment,
    nome varchar(255) not null,
    fone varchar(255) not null,
    email varchar(255)
);

-- verificar tabelas do banco
show tables;

-- descrever a tabela
describe contato;

-- adicionando uma coluna(campo) a tabela
alter table contato add column obs varchar(255);

alter table contato add column fone2 varchar(255);

alter table contato add column cel varchar(255) after fone;

-- modificando uma propriedade da tabela

alter table contato modify column cel varchar(255) not null;

-- excluir uma coluna(campo) da tabela

alter table contato drop column obs;

-- excluir a tabela
drop table contato;
