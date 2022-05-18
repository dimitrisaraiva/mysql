/**
	Lojinha
    @author Dimitri Saraiva
*/

show databases;


create database lojinhaDimitri;

drop database produto;

use lojinhaDimitri;



create table produto (
	codigo int primary key auto_increment,
    nome varchar(255) not null,
    estoque int not null,
    valor varchar(255) not null
);


show tables;


describe produto;

alter table produto add column descricao varchar(255);

