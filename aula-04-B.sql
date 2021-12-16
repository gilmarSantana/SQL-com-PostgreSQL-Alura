SELECT * FROM aluno
JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id;

SELECT  * FROM aluno
join aluno_curso on aluno_curso.aluno_id = aluno.id
join curso on curso.id = aluno_curso.curso_id;

-- Pesquisa normal sem ALIAS
select aluno.nome, curso.nome from aluno
join aluno_curso on aluno_curso.aluno_id = aluno_id
join curso on aluno_curso.curso_id = curso.id;

-- Pesquisa com ALIAS
SELECT aluno.nome as aluno, curso.nome as curso from aluno
join aluno_curso on aluno_curso.aluno_id = aluno.id
join curso on curso.id = aluno_curso.curso_id;

-- Pesquisa com ALIAS diferente
select aluno.nome as aluno_nome, curso.nome as curso_nome from aluno
join aluno_curso on aluno_curso.aluno_id =  aluno.id
join curso on aluno_curso.curso_id = curso.id;

-- Pesquisa com ALIAS com mais de uma palavra
select aluno.nome as "Nome do Aluno", curso.nome as "Nome do Curso" from aluno
join aluno_curso on aluno_curso.aluno_id = aluno.id
join curso on aluno_curso.curso_id = curso.id;

-- Usando o left join
select aluno.nome as "Nome do Aluno", curso.nome as "Nome do Curso" from aluno
left join aluno_curso on aluno_curso.aluno_id = aluno.id
left join curso on aluno_curso.curso_id = curso.id;

-- Usando o right join
select aluno.nome as "Nome do Aluno", curso.nome as "Nome do Curso" from aluno
right join aluno_curso on aluno_curso.aluno_id = aluno.id
right join curso on aluno_curso.curso_id = curso.id;

-- Usando o full join
select aluno.nome as "Nome do Aluno", curso.nome as "Nome do Curso" from aluno
full join aluno_curso on aluno_curso.aluno_id = aluno.id
full join curso on aluno_curso.curso_id = curso.id;

-- Usando o cross join
select aluno.nome, curso.nome from aluno
cross join curso;




















