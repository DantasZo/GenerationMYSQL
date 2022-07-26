create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_pizzas (
id bigint auto_increment,
Nome varchar(255) not null,
Valor bigint not null,
primary key(id)
);

create table tb_categorias(
id bigint auto_increment,
Recheio varchar(255) not null,
Tipo varchar(255) not null,
Borda_recheada varchar(255) not null,
Tamanho varchar(255) not null,
primary key(id),
main_id bigint,
foreign key(main_id) references tb_pizzas(id)
);


insert into tb_pizzas (Nome, Valor) values ("Mussarela", 45);
insert into tb_pizzas (Nome, Valor) values ("Calabresa", 50);
insert into tb_pizzas (Nome, Valor) values ("Frango com Catupiry", 68);
insert into tb_pizzas (Nome, Valor) values ("Paulista", 100);
insert into tb_pizzas (Nome, Valor) values ("Brocolis", 40);
insert into tb_pizzas (Nome, Valor) values ("Pizza não encontrada", 0);

insert into tb_categorias (Recheio, Tipo, Borda_recheada, Tamanho, main_id) values ("Queijo mussarela", "Salgada", "Não", "Grande ", 1);
insert into tb_categorias (Recheio, Tipo, Borda_recheada, Tamanho, main_id) values ("Calabresa", "Salgada", "Não", "Grande ", 2);
insert into tb_categorias (Recheio, Tipo, Borda_recheada, Tamanho, main_id) values ("Frango com catupiry", "Salgada", "Sim", "Grande ", 3);
insert into tb_categorias (Recheio, Tipo, Borda_recheada, Tamanho, main_id) values ("null", "null", "Não", "null", 6);
insert into tb_categorias (Recheio, Tipo, Borda_recheada, Tamanho, main_id) values ("null", "null", "Não", "null", 6);
insert into tb_categorias (Recheio, Tipo, Borda_recheada, Tamanho, main_id) values ("null", "null", "Não", "null", 6);
insert into tb_categorias (Recheio, Tipo, Borda_recheada, Tamanho, main_id) values ("null", "null", "Não", "null", 6);
insert into tb_categorias (Recheio, Tipo, Borda_recheada, Tamanho, main_id) values ("null", "null", "Não", "null", 6);

select * from tb_pizzas where Valor>45.00;
select * from tb_pizzas where Valor<50.00 and Valor>150.00;
select * from tb_pizzas where Nome like "%M%";


select * from tb_categorias inner join tb_pizzas on main_id=tb_pizzas.id;

select * from tb_categorias inner join tb_pizzas on main_id=tb_pizzas.id
where Tipo like "%Salgada%";



