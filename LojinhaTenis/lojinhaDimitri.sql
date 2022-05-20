/**
	Lojinha de tenis
    @author Dimitri Saraiva
*/


create database lojinhaDimitri;


use lojinhaDimitri;



create table produto (
	codigo int primary key auto_increment,
    tenis varchar(255) not null,
    estoque int not null,
    valor decimal(10,2) not null
);
describe produto;
drop table produto;


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








