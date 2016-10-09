create database locadora;
use locadora;

create table usuario (
id_usu int auto_increment primary key,
nome varchar(30) not null,
email varchar(100) not null,
senha varchar(8) not null
);

create table filme (
id_filme int auto_increment primary key,
nome varchar(30) not null,
sinopse varchar(1000) not null,
valor double not null,
genero varchar(20) not null,
stat char
);

create table pagamento(
id_pag int auto_increment primary key,
valor double not null,
n_cartao varchar(16) not null
);

create table admin(
id_adm int auto_increment primary key,
usuario varchar(30) not null,
senha varchar(8) not null
)

select * from usuario;