drop table curso;
create table curso (
	id  serial primary key,
	nome varchar(255) not null
);

insert into curso (nome) values ('HTML');
insert into curso (nome) values ('CSS');
insert into curso (nome) values ('JAVASCRIPT');

SELECT * FROM curso; 
SELECT * FROM aluno;

drop table aluno_curso;
create table aluno_curso (
	aluno_id integer,
	curso_id integer,
	primary key (aluno_id, curso_id),

	foreign key (aluno_id)
	REFERENCES aluno (id),

	foreign key (curso_id)
	REFERENCES curso (id)
);

insert into aluno_curso (aluno_id, curso_id) values (1, 3);
insert into aluno_curso (aluno_id, curso_id) values (2, 3);
insert into aluno_curso (aluno_id, curso_id) values (3, 1);

insert into aluno_curso (aluno_id, curso_id) values (4, 1);
--ERRO:  inserção ou atualização em tabela "aluno_curso" viola restrição de chave estrangeira "aluno_curso_aluno_id_fkey"
--DETAIL:  Chave (aluno_id)=(4) não está presente na tabela "aluno".






	



