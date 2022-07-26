create database if not exists db_rpg;

use db_rpg;

create table if not exists tb_classe(
id bigint auto_increment,
nome varchar(255) not null,
arma varchar(255),
descricao varchar(1000),
primary key (ID)
);

create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null, 
raca varchar(255),
ataque double,
defesa double,
hp double,
primary key (id),
classe_id bigint,
foreign key(classe_id) references tb_classe(id)
);

select * from tb_classe;
select * from tb_personagem;

insert into tb_classe (nome, arma, descricao) value ('Ladrao','adaga','rouba');
insert into tb_classe (nome, arma, descricao) value ('Mago','Cajado','Lança magia!');
insert into tb_classe (nome, arma, descricao) value ('Paladino','Marreta','Tudo pela fé!');


insert into tb_personagem (nome, raca, ataque, defesa, hp) value ('Vagner','humano', 2000, 700, 1000);
insert into tb_personagem (nome, raca, ataque, defesa, hp) value ('Bruna','maga', 3000, 500, 1000);
insert into tb_personagem (nome, raca, ataque, defesa, hp) value ('Cinthia','Guerreira', 2300, 3000, 1000);

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;
select * from tb_personagem left join tb_classe on tb_classe.id = tb_personagem.classe_id;
select * from tb_personagem right join tb_classe on tb_classe.id = tb_personagem.classe_id;

select tb_personagem.nome, tb_personagem.raca, tb_classe.nome from tb_personagem
inner join tb_classe on  tb_classe.id = tb_personagem.classe_id;