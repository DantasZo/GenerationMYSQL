CREATE DATABASE IF NOT EXISTS DB_SERVICO_RH;

USE DB_SERVICO_RH;

create table if not exists tb_funcionarios(
id bigint(5) auto_increment,
nome varchar(255) not null,
idade int not null,
salario float not null,
cargo char (255),
primary key (ID)
);

select * from tb_funcionarios;

insert into tb_funcionarios (nome,idade,salario,cargo)values('Jefferson', 19, 5000.00, 'dev jun');

select * from tb_funcionarios where salario>2000;
select * from tb_funcionarios where salario<2000;

update tb_funcionarios set nome = "Claudia" where id = 2;