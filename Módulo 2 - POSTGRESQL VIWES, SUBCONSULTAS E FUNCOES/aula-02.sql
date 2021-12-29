create table categoria (
	id serial primary key,
	nome varchar(255) not null
);


alter table curso
add column categoria_id integer not null references categoria(id);

insert into categoria (nome) values('backEnd');
insert into categoria (nome) values('frontEnd');
insert into categoria (nome) values('dataBase');
insert into categoria (nome) values('UX');

select * from aluno_curso;

insert into aluno (primeiro_nome, ultimo_nome, data_nascimento) values ('Gilmar', 'Santana Lins', '1997-04-12');
insert into aluno (primeiro_nome, ultimo_nome, data_nascimento) values ('Renato', 'Ferreira dos Santos', '1986-10-08');
insert into aluno (primeiro_nome, ultimo_nome, data_nascimento) values ('Augusto', 'Torres Serafim', '2000-06-14');
insert into aluno (primeiro_nome, ultimo_nome, data_nascimento) values ('Rodrigo', 'Ferreira Desan', '1987-09-24');

insert into curso (nome, categoria_id) values ('PHP', 1);
insert into curso (nome, categoria_id) values ('Python', 1);
insert into curso (nome, categoria_id) values ('CSS', 2);
insert into curso (nome, categoria_id) values ('SaSS', 2);
insert into curso (nome, categoria_id) values ('PostgreSql', 3);
insert into curso (nome, categoria_id) values ('MongoDb', 3);
insert into curso (nome, categoria_id) values ('User Experience Essentials', 4);
insert into curso (nome, categoria_id) values ('User Experience Professional', 4);

insert into aluno_curso values (1, 1);
insert into aluno_curso values (2, 3);
insert into aluno_curso values (3, 5);
insert into aluno_curso values (4, 7);
insert into aluno_curso values (1, 2);
insert into aluno_curso values (2, 4);
insert into aluno_curso values (3, 6);
insert into aluno_curso values (4, 8);