create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_produtos (
id bigint auto_increment,
Nome varchar(255) not null,
Valor bigint not null,
primary key(id)
);

create table tb_categoria(
id bigint auto_increment,
Precisa_receita varchar(255) not null,
Tipo varchar(255) not null,
Retenção_receita varchar(255) not null,
MG_ou_ML varchar(255) not null,
primary key(id),
main_id bigint,
foreign key(main_id) references tb_produtos(id)
);


insert into tb_produtos (Nome, Valor) values ("Minoxidil", 70);
insert into tb_produtos (Nome, Valor) values ("Rivotril", 45);
insert into tb_produtos (Nome, Valor) values ("Cetoprofeno", 60);
insert into tb_produtos (Nome, Valor) values ("Dorflex", 100);
insert into tb_produtos (Nome, Valor) values ("Neosaldina", 40);
insert into tb_produtos (Nome, Valor) values ("não encontrado", 0);

insert into tb_categoria (Precisa_receita, Tipo, Retenção_receita, MG_ou_ML, main_id) values ("Não", "Remedio pra calvice", "Não", "Ml ", 1);
insert into tb_categoria (Precisa_receita, Tipo, Retenção_receita, MG_ou_ML, main_id) values ("Sim", "Antidepressivo", "Sim", "Depende ", 2);
insert into tb_categoria (Precisa_receita, Tipo, Retenção_receita, MG_ou_ML, main_id) values ("Não", "Antiinflamatorio", "Não", "Mg ", 3);
insert into tb_categoria (Precisa_receita, Tipo, Retenção_receita, MG_ou_ML, main_id) values ("null", "null", "Não", "null", 6);
insert into tb_categoria (Precisa_receita, Tipo, Retenção_receita, MG_ou_ML, main_id) values ("null", "null", "Não", "null", 6);
insert into tb_categoria (Precisa_receita, Tipo, Retenção_receita, MG_ou_ML, main_id) values ("null", "null", "Não", "null", 6);
insert into tb_categoria (Precisa_receita, Tipo, Retenção_receita, MG_ou_ML, main_id) values ("null", "null", "Não", "null", 6);
insert into tb_categoria (Precisa_receita, Tipo, Retenção_receita, MG_ou_ML, main_id) values ("null", "null", "Não", "null", 6);

select * from tb_produtos where Valor>50.00;
select * from tb_produtos where Valor<5.00 and Valor>60.00;
select * from tb_produtos where Nome like "%C%";


select * from tb_categoria inner join tb_produtos on main_id=tb_produtos.id;

select * from tb_categoria inner join tb_produtos on main_id=tb_produtos.id
where Tipo like "%Antidepressivo%";



