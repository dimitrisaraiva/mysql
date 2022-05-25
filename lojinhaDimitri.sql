/**
	Lojinha de tenis
    @author Dimitri Saraiva
*/


create database lojinhaDimitri;


use lojinhaDimitri;



create table produto (
	codigo int primary key auto_increment,
    barcode varchar(255) unique,
    tenis varchar(255) not null,
    descricao varchar(255) not null,
    fabricante varchar(255) not null,
    datacad timestamp default current_timestamp,
    dataval date,
    estoque int not null,
    estoquemin int not null,
    unidade varchar(255) not null,
    localizacao varchar(255) ,
    custo decimal (10,2)not null,
    lucro decimal (10,2),
    venda decimal (10,2)
);
describe produto;

drop table produto;

insert into produto(barcode,tenis,descricao,fabricante,dataval,estoque,
estoquemin,unidade,localizacao,custo,lucro,venda)
values ('1234567890', 'Air Force 1', 'Air Force 1 Branco','Nike',21001231,13,5,'UN','Prateleira 2',300,150,800);

insert into produto(barcode,tenis,descricao,fabricante,dataval,estoque,
estoquemin,unidade,localizacao,custo,lucro,venda)
values ('0987654321', 'Air Jordan 1', 'Air Jordan 1 Vermelho','Nike',21001231,5,5,'UN','Prateleira 7',800,75,1500);

insert into produto(barcode,tenis,descricao,fabricante,dataval,estoque,
estoquemin,unidade,localizacao,custo,lucro,venda)
values ('0683175432', 'Dunk', 'Dunk Preto','Nike',21001231,7,5,'UN','Prateleira 5',500,100,1000);

insert into produto(barcode,tenis,descricao,fabricante,dataval,estoque,
estoquemin,unidade,localizacao,custo,lucro,venda)
values ('3245671345', 'Puma', 'Puma Suede','Puma',20152109,15,5,'UN','Prateleira 10',175,100,350);

insert into produto(barcode,tenis,descricao,fabricante,dataval,estoque,
estoquemin,unidade,localizacao,custo,lucro,venda)
values ('9234673890', 'Mizuno', 'Mizuno Camaleão','Mizuno',20171110,9,5,'UN','Prateleira 1',650,100,1300);

insert into produto(barcode,tenis,descricao,fabricante,dataval,estoque,
estoquemin,unidade,localizacao,custo,lucro,venda)
values ('3425768901', 'Old Skool', 'Vans Old Skool','Vans',20212505,29,5,'UN','Prateleira 13',175,100,350);

insert into produto(barcode,tenis,descricao,fabricante,dataval,estoque,
estoquemin,unidade,localizacao,custo,lucro,venda)
values ('0000940001', 'AIR MAX PLUS', 'TÊNIS NIKE AIR MAX PLUS CINZA','Nike',20212505,3,5,'UN','Prateleira 14',550,100,1100);

insert into produto(barcode,tenis,descricao,fabricante,dataval,estoque,
estoquemin,unidade,localizacao,custo,lucro,venda)
values ('0000925101', 'SB NYJAH FREE 2', 'TÊNIS NIKE SB NYJAH FREE 2 MARROM','Nike',21000525,2,5,'UN','Prateleira 15',350,100,700);

insert into produto(barcode,tenis,descricao,fabricante,dataval,estoque,
estoquemin,unidade,localizacao,custo,lucro,venda)
values ('0000924101', ' NMD R1 SOUTH PARK', 'TÊNIS ADIDAS NMD R1 SOUTH PARK LARANJA','Adidas',21001111,16,5,'UN','Prateleira 23',500,100,1000);

insert into produto(barcode,tenis,descricao,fabricante,dataval,estoque,
estoquemin,unidade,localizacao,custo,lucro,venda)
values ('1234567899', ' RS-Z', 'TÊNIS PUMA RS-Z PRETO','Puma',21001231,12,5,'UN','Prateleira 22',214,100,429);


update produto set dataval='21001231' where codigo=9;
update produto set dataval='21001231' where codigo=8;
update produto set dataval='21001231' where codigo=9;
update produto set dataval='20210525' where codigo=8;
update produto set dataval='20150321' where codigo=6;


update produto set barcode='1425374892' where codigo=10;


-- CRUD CREAT

insert into produto (tenis,estoque,valor)
values ('Air Force 1', '13', '800.00');

insert into produto (tenis,estoque,valor)
values ('Air Jordan 1', '5', '1500.00');

insert into produto (tenis,estoque,valor)
values ('Dunk', '7', '1000.00');

insert into produto (tenis,estoque,valor)
values ('Puma Suede', '23', '300.00');

insert into produto (tenis,estoque,valor)
values ('Mizuno Camaleão', '9', '1300.00');

insert into produto (tenis,estoque,valor)
values ('Vans Old Skool', '29', '350.00');




-- CRUD READ

select * from produto;

-- inventario do estoque (patrimonio)

select sum(estoque * custo) as total from produto;


select * from produto where estoque < estoquemin;


select codigo as código,tenis, date_format(dataval,'%d/%m/%Y') as data_validade,estoque,estoquemin as estoque_minimo
from produto where estoque < estoquemin;


select codigo as código,tenis,
date_format(dataval,'%d/%m/%Y') as data_validade
from produto;


select codigo as código, tenis,
date_format(dataval,'%d/%m/%Y') as data_validade,
datediff(dataval,curdate()) as dias_restantes
from produto;

create table usuarios(
idusu int primary key auto_increment,
usuario varchar(255) not null,
login varchar(255) not null unique,
senha varchar(255) not null,
perfil varchar (255) not null 
);

describe usuarios;



insert into usuarios(usuario,login,senha,perfil)
values('Administrador','admin',md5('admin'),'admin');

insert into usuarios(usuario,login,senha,perfil)
values('Dimitri','dimitri',md5('dimitri24'),'user');

select * from usuarios;

select * from usuarios where login='admin' and senha=md5('admin');

create table clientes(
idcli int primary key auto_increment,
nome varchar(255) not null,
fone varchar(255) not null,
cpf varchar(255) unique,
email varchar (255),
mkt varchar(255) not null,
cep varchar(255),
endereco varchar(255),
numero varchar (255),
complemento varchar (255),
bairro varchar(255),
cidade varchar(255),
uf char(2)
);

describe clientes;

alter table clientes add column nascimento date not null after nome;

insert into clientes(nome,nascimento,fone,cpf,email,mkt,cep,endereco,numero,complemento,bairro,cidade,uf)
values ('Dimitri',20031224,950280735,32453494723,'dimitri2055@gmail.com','sim ou não',02239050,'Rua Tuiuti',322,'Uma Avenida','Tatuape','São Paulo','SP');

insert into clientes(nome,nascimento,fone,cpf,email,mkt,cep,endereco,numero,complemento,bairro,cidade,uf)
values ('Renan',20040731,967629824,32456380830,'renan@gmail.com','sim ou não',62278350,'Avenida Amador Bueno',243,'Uma Avenida Larga','Vila Marieta','São Paulo','SP');

insert into clientes(nome,nascimento,fone,cpf,email,mkt,cep,endereco,numero,complemento,bairro,cidade,uf)
values ('Fernando',20040216,963423984,64789432490,'fernando@gmail.com','sim ou não',83343520,'Rua Dom Estevão Pimentel',49,'Do lado da Farmacia','Vila Formosa','São Paulo','SP');

insert into clientes(nome,nascimento,fone,cpf,email,mkt,cep,endereco,numero,complemento,bairro,cidade,uf)
values ('Maria',20030422,942312479,74895742380,'maria@gmail.com','sim ou não',04423650,'Avenida Sapopemba',290,'Maior Avenida','Mooca','São Paulo','SP');

insert into clientes(nome,nascimento,fone,cpf,email,mkt,cep,endereco,numero,complemento,bairro,cidade,uf)
values ('Guilherme',20040223,972341803,42538902440,'guilherme@gmail.com','sim ou não',03356879,'Rua Azevedo Soares',90,'Rua Azevedo','Tatuape','São Paulo','SP');

insert into clientes(nome,nascimento,fone,cpf,email,mkt,cep,endereco,numero,complemento,bairro,cidade,uf)
values ('Gustavo',20030702,973890477,53674893849,'gustavo@gmail.com','sim ou não',03378299,'Rua Coelho Lisboa',14,'Cuelin Cria','Analia Franco','São Paulo','SP');

insert into clientes(nome,nascimento,fone,cpf,email,mkt,cep,endereco,numero,complemento,bairro,cidade,uf)
values ('Garison',20030702,973890477,23456789010,'garison@gmail.com','sim ou não',03378299,'Rua Coelho Lisboa',14,'Cuelin Cria','Analia Franco','São Paulo','SP');

update clientes set fone=911820735 where idcli=3;

update clientes set mkt='SIM' where idcli=1;
update clientes set mkt='SIM' where idcli=2;
update clientes set mkt='NÃO' where idcli=3;
update clientes set mkt='SIM' where idcli=4;
update clientes set mkt='NÃO' where idcli=5;
update clientes set mkt='SIM' where idcli=6;

delete from clientes where idcli=9;

select nome as Nome, fone as Telefone, email as Email from clientes;
select nome as Nome, date_format(nascimento, '%d/%m/%Y') as Aniversário from clientes;
select email from clientes where mkt=('SIM');




select * from clientes;


select * from produto where codigo=2;
select * from produto where tenis='Dunk';
select * from produto where tenis like 'A%';

select tenis,estoque from produto;
select tenis,estoque,valor from produto order by tenis;
select tenis,estoque,valor from produto order by tenis desc;

select tenis as Tenis,estoque as Estoque, valor as Valor
from produto order by tenis; 

update produto set valor='1400.00' where codigo=6;





delete from produto where codigo=8;
delete from produto where codigo=3;








