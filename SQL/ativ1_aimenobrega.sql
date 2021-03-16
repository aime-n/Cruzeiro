/*ATIVIDADE 1

Aluno: Aimê Gomes da Nobrega
RGM: 21862222
Curso: Ciências de Dados
Universidade Cruzeiro do Sul*/

create database if not exists dbPIC;

create table if not exists dbPIC.TB_PAIS (
ID_PAIS INT AUTO_INCREMENT primary key,
NM_PAIS varchar(50) not null,
NR_POPULACAO decimal);

create table if not exists dbPIC.TB_EQUIPE (
ID_EQUIPE INT AUTO_INCREMENT primary key,
NM_EQUIPE varchar(50) not null,
ID_PAIS INT not null,
foreign key (ID_PAIS) references tb_pais(ID_PAIS));

create table if not exists dbPIC.TB_PILOTO(
ID_PILOTO INT AUTO_INCREMENT primary key,
DT_NASCIMENTO DATETIME,
ID_PAIS INT not null,
ID_EQUIPE INT not null,
foreign key (ID_PAIS) references tb_pais(ID_PAIS),
foreign key (ID_EQUIPE) references tb_equipe(ID_EQUIPE));


create table if not exists dbPIC.TB_CIRCUITO(
ID_CIRCUITO  INT AUTO_INCREMENT primary key,
NM_CIRCUITO  varchar(50) not null,
NR_EXTENSAO decimal,
ID_PAIS  INT not null,
foreign key (ID_PAIS) references tb_pais(ID_PAIS));


create table if not exists dbPIC.TB_PROVA(
ID_PROVA  INT AUTO_INCREMENT primary key,
DT_PROVA DATETIME NOT NULL,
NM_SITUACAO VARCHAR(50),
ID_CIRCUITO  INT not null,
foreign key (ID_CIRCUITO) references tb_circuito(ID_CIRCUITO));


create table if not exists dbPIC.TB_RESULTADO(
ID_PROVA INT NOT NULL,
ID_PILOTO INT NOT NULL,
NR_TEMPO_PROVA decimal not null,
NR_COLOC_FINAL int,
NR_POSICAO_GRID int,
NR_MELHOR_VOLTA decimal,
foreign key (ID_PROVA) references tb_prova(ID_PROVA),
foreign key (ID_PILOTO) references tb_piloto(ID_PILOTO));





