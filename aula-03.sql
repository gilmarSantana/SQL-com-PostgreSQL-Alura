-- Podemos colocar apelidos nos campos quando fizermos SELECT
SELECT 
	nome as "Nome Completo",
	observacao as "Última alteração",
	dinheiro as Capital
FROM ALUNO;

-- Trabalhando com filtros no SELECT 
select * from aluno where nome = 'Fabio da Silva';
select * from aluno where nome <> 'Lucas Melo';
select * from aluno where nome like '_ucas Melo'; -- Qualquer caracter no lugar de _ 'underline'
select * from aluno where nome not like '_ucas Melo';
select * from aluno where nome like 'L%'; -- Começa com:
select * from aluno where nome like '%a'; -- Termina com:
select * from aluno where nome like '%va%'; -- Contém:
select * from aluno where nome like '%Fa%va%'; -- Contém:

select * from aluno where cpf is null;
select * from aluno where cpf is not null;

select * from aluno where idade >= 24; -- maior, menor, maior ou igual, menor ou igual
select * FROM aluno where idade between 10 and 25;

select * from aluno where idade >= 18 and cpf is not null;
select * from aluno where idade >= 18 or dinheiro >= 100;