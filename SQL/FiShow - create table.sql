/* Tabelas primarias */
create table jogador(
id 	serial      primary key,
nome 	varchar(80) not null,
posicao varchar(80) default 'jogador', -- Jogador ou mestre
login   varchar(80) not null,
senha   varchar(20) not null
);

create table personagem(
id  	    serial      primary key,
nome        varchar(80) not null,
idade	    int,
vida 	    int,
mana        int,
stamina     int,
nivel 	    int default '0',
experiencia int default '0',
dinehiro    int,
descricao   text
);

create table raca(
id        serial      primary key,
nome 	  varchar(80) not null,
descricao text 
);

create table classe(
id        serial      primary key,
nome      varchar(80) not null,
descricao text 
);

create table atributo(
id    serial      primary key,
nome  varchar(80) not null,
valor int         not null
);

create table item(
id   	  serial      primary key,
nome 	  varchar(80) not null,
tipo	  varchar(40) not null,
descricao text   
);

create table historia(
id        serial primary key,
nome      varchar(80),
epoca     varchar(80),
inicio    date, -- 'yyyy-mm-dd' Padrão ISO 8601 aceito em qualquer formato.
fim       date, -- 'yyyy-mm-dd' Padrão ISO 8601 aceito em qualquer formato.
descricao text 
);

/* Tabelas secundarias */
create table jogador_personagem(
id           serial primary key,
jogadorFK    int    references jogador,
personagemFK int    references personagem
);

create table personagem_raca(
id           serial primary key,
personagemFK int    references personagem,
racaFK       int    references raca
);

create table personagem_classe(
id           serial primary key,
personagemFK int    references personagem,
classeFK     int    references classe
);

create table personagem_atributo(
id           serial primary key,
personagemFK int    references personagem,
atributoFK   int    references atributo
);

create table personagem_item(
id        serial primary key,
personagemFK int references personagem,
itemFK       int references item
);

create table personagem_historia(
id           serial primary key,
personagemFK int    references personagem,
historiaFK   int    references historia
);

create table item_atributo(
id           serial primary key,
itemFK       int    references item,
atributoFK   int    references atributo
);