create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
id bigint auto_increment,
nome varchar(255) not null,
classe varchar(255) not null,
primary key(id)
);

create table tb_personagens(
id bigint auto_increment,
tipo varchar(255) not null,
energia varchar(255) not null,
defesa int not null,
poder int not null,
primary key(id),
main_id bigint,
foreign key(main_id) references tb_classes(id)
);

insert into tb_classes (nome, classe) values ("Lucas", "Arqueiro");
insert into tb_classes (nome, classe) values ("Amanda", "Curandeira");
insert into tb_classes (nome, classe) values ("Jose", "Ladrão");
insert into tb_classes (nome, classe) values ("Igor", "Monge");
insert into tb_classes (nome, classe) values ("Cinthia", "Guerreira");

insert into tb_personagens (tipo, energia, defesa, poder, main_id) values ("Fogo", "Caótico", 1000, 5000, 1 );
insert into tb_personagens (tipo, energia, defesa, poder, main_id) values ("Agua", "Boa", 100, 1000, 2 );
insert into tb_personagens (tipo, energia, defesa, poder, main_id) values ("terra", "neutro", 2000, 1000, 3);
insert into tb_personagens (tipo, energia, defesa, poder, main_id) values ("Luz", "Bom", 5000, 1600, 4 );
insert into tb_personagens (tipo, energia, defesa, poder, main_id) values ("Natureza", "Caótica boa", 1600, 2000, 5);
insert into tb_personagens (tipo, energia, defesa, poder, main_id) values ("vacuo", "neutro", 0, 0, 1 );
insert into tb_personagens (tipo, energia, defesa, poder, main_id) values ("vacuo", "neutro", 0, 0, 1 );
insert into tb_personagens (tipo, energia, defesa, poder, main_id) values ("vacuo", "neutro", 0, 0, 1);

select * from tb_personagens where poder>2000;
select * from tb_personagens where poder<2000 and poder>1000;
select * from tb_classes where nome like "%c%";

select * from tb_personagens inner join tb_classes on main_id=tb_classes.id;



