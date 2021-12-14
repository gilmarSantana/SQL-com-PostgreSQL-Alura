-- REALIZANDO CRUD - CREATE, READ, UPDATE, DELETE

-- Inserindo dados na tabela
INSERT INTO aluno (nome, cpf, observacao, idade, dinheiro, altura, ativo, data_nascimento, hora_aula, matriculado_em) VALUES ('Gilmar Santana Lins', '33333333333', 'We dont have coments for this task, please return after and check if there is some coment here.',24,100.54,1.81,TRUE,'1997-04-12','17:00:00','2021-12-13 17:00:00');

-- Atualizando dados nas tabelas
UPDATE aluno SET cpf = '44444444444', observacao = 'There was a change in the CPF' WHERE id = 1

-- Deletando registros da tabela
DELETE FROM aluno WHERE id = 1

SELECT * FROM aluno;