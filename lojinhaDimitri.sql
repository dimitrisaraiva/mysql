/**
	Lojinha de tenis
    @author Dimitri Saraiva
*/


create database lojinhaDimitri;


use lojinhaDimitri;



create table produto (
	codigo int primary key auto_increment,
    barcode varchar(255),
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
values ('1234567890', 'Dunk', 'Dunk Preto','Nike',21001231,7,5,'UN','Prateleira 5',500,100,1000);


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








