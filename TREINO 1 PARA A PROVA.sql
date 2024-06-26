/*CREATE DATABASE tbl_faculdade
USE tbl_faculdade


CREATE TABLE tbl_alunos(
	id_aluno INT AUTO_INCREMENT PRIMARY KEY,
	nome_aluno VARCHAR (50),
	curso_aluno VARCHAR(50),
	nasc_aluno DATE,
	telefone_aluno VARCHAR(50),
	fk_cursos INT);
CREATE TABLE tbl_cursos(
	id_curso INT AUTO_INCREMENT PRIMARY KEY,
	professor_curso VARCHAR (100),
	qtd_alunos INT,
	tempo_curso VARCHAR (50));

ALTER TABLE tbl_alunos ADD CONSTRAINT FOREIGN KEY(fk_cursos) REFERENCES tbl_cursos (id_curso);

INSERT INTO tbl_cursos
(professor_curso,qtd_alunos,tempo_curso)
VALUES
('Oswaldo','71','2 anos'),
('Matheus','71','5 anos'),
('Carlos','71','6 anos'),
('Igor','71','3 anos');

INSERT INTO tbl_alunos
(nome_aluno,curso_aluno,nasc_aluno,fk_cursos)
VALUES
('Weslley','Analise e desenvolvimento de sistemas','2004-09-27',1),
('Anderson','Fármacia','2000-12-12',2),
('William','Enfermagem','1998-09-15',3),
('Raphael','Farmácia','1996-05-01',4);

UPDATE tbl_alunos SET nome_aluno ="Rapahel" WHERE id_aluno =1;

SELECT tbl_cursos.professor_curso,tbl_cursos.qtd_alunos,tbl_alunos.nome_aluno,tbl_alunos.curso_aluno
FROM tbl_alunos INNER JOIN tbl_cursos
ON tbl_alunos.fk_cursos = tbl_cursos.id_curso;*/

ALTER TABLE tbl_alunos CHANGE curso_aluno curso VARCHAR(50);






