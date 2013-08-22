/* Criação das tabelas */
create table pessoas(
id_pessoa serial      primary key,
nome      varchar(80) not null,
email     varchar(100),
idade     int         not null
);

create table empregos(
id_emprego serial      primary key,
nome       varchar(80) not null,
salario    decimal(10,2)
);

/* seleciona tabelas */
select * from pessoas;
select * from empregos;

/* Deleta tabelas */
drop table pessoas;
drop table empregos;

/* Insere dados nas tabelas */
insert into pessoas(nome, email, idade) values('Bruno', 'brunolpw@outlook.com', 23);
insert into empregos(nome, salario) values('Desenvolvedor Java', 5400.32);