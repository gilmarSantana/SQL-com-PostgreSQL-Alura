select primeiro_nome, ultimo_nome, count(aluno_curso.curso_id) as contagem_cursos from aluno
	inner join aluno_curso on aluno.id = aluno_curso.aluno_id
group by 1, 2
order by contagem_cursos desc
limit 1;

select  curso.nome, count(aluno_curso.aluno_id) as curso_mais_requisitado from curso
	INNER JOIN aluno_curso on curso.id = aluno_curso.curso_id
group by 1
order by curso.nome;
	