create database db_servico_rh;

use db_servico_rh;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
primary key(id),
colaborador_id bigint,
foreign key(colaborador_id) references tb_cargos(id)
);

create table tb_cargos(
id bigint auto_increment,
cargo varchar(255) not null, 
salario decimal not null,
primary key(id)
);

select * from tb_funcionarios;
select * from tb_cargos;

insert into tb_funcionarios (nome, idade, colaborador_id) values ("Lucas", 21,1);
insert into tb_funcionarios (nome, idade, colaborador_id) values ("Amanda", 29,1);

insert into tb_cargos (cargo, salario) values ("Auxiliar", 3000);
insert into tb_cargos (cargo, salario) values ("Gerente", 5000);

select * from tb_funcionarios inner join tb_cargos on tb_cargos.id = tb_funcionarios.colaborador_id;

