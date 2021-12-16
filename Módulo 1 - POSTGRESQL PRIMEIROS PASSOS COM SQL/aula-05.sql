drop table aluno_curso;

create table aluno curso(
	aluno_id integer,
	curso_id integer
	primary key(aluno_id, curso_id)

	foreign key (aluno_id)
	references aluno (id)
	on delete cascade, -- Exclui o registro em todas as tabelças do relacionamento
	on update cascade  -- Atualiza o registro em todas as tabelças do relacionamento

	foreign key (curso_id)
	references curso (id)
	
);