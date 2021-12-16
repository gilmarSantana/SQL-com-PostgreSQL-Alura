-- ORDENAÇÃO DOS DADOS

CREATE TABLE FUNCIONARIOS (
	id serial primary key,
	matricula varchar(10),
	nome varchar(255),
	sobrenome varchar(255)
);

insert into funcionarios (MATRICULA, NOME, SOBRENOME) values ('M001', 'MATEUS', 'SANTOS');
insert into funcionarios (MATRICULA, NOME, SOBRENOME) values ('M002', 'MARCOS', 'SILVA');
insert into funcionarios (MATRICULA, NOME, SOBRENOME) values ('M003', 'LUCAS', 'DUARTE');
insert into funcionarios (MATRICULA, NOME, SOBRENOME) values ('M004', 'JOAO', 'FEITOSA');
insert into funcionarios (MATRICULA, NOME, SOBRENOME) values ('M005', 'ESTER', 'PEREIRA');
insert into funcionarios (MATRICULA, NOME, SOBRENOME) values ('M006', 'ANA', 'GILBURT');
insert into funcionarios (MATRICULA, NOME, SOBRENOME) values ('M007', 'JACOB', 'YACOV');
insert into funcionarios (MATRICULA, NOME, SOBRENOME) values ('M008', 'JACOB', 'YACOV');
insert into funcionarios (MATRICULA, NOME, SOBRENOME) values ('M009', 'MATEUS', 'SANTOS');
insert into funcionarios (MATRICULA, NOME, SOBRENOME) values ('M010', 'MARCOS', 'SILVA');

-- ORDENANDO POR NOME CRESCENTE
SELECT * FROM FUNCIONARIOS ORDER BY NOME ASC;

-- ORDENANDO POR NOME DECRESCENTE
SELECT * FROM FUNCIONARIOS ORDER BY NOME DESC;

-- ORDENANDO POR DOIS CAMPOS
SELECT * FROM FUNCIONARIOS ORDER BY NOME, MATRICULA;

-- LIMITANDO CONSULTAS
SELECT * from funcionarios order by matricula  offset 0 limit 2;


-- COUNT() - Retorna a quantidade de registros.
select count(*) as "Quantidade de Funcionarios" from funcionarios;

-- SUM() - Retorna a soma dos registros.
select sum(id) as "Soma dos valores dos IDs" from funcionarios;
 
-- MAX() - Retorna o maior valor dos registros.
select max(id) as "Maior ID da Tabela" from funcionarios;

-- MIN() - Retorna o menor valor dos registros.
select min(id) as "Menor ID da Tabela" from funcionarios;

-- AVG() - Retorna a média dos registros.
select avg(id) as "Media dos IDs da Tabela" from funcionarios;


select distinct nome, sobrenome from funcionarios order by nome;

select nome, sobrenome, count(*) from funcionarios group by nome, sobrenome order by nome;


select curso.nome, count(aluno.id) from curso
left join aluno_curso on aluno_curso.curso_id = curso.id
left join aluno on aluno.id = aluno_curso.aluno_id
group by curso.nome
HAVING count(aluno.id) = 0;









