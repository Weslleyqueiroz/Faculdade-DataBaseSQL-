/*CREATE DATABASE hospital
USE hospital;
CREATE TABLE paciente(
id_paciente INT AUTO_INCREMENT PRIMARY KEY,
fk_problema INT,
nome_paciente VARCHAR(100),
documento_paciente VARCHAR(100),
data_nasc DATE,
idade_paciente INT,
genero_paciente VARCHAR(2));

CREATE TABLE medico( 
id_medico INT AUTO_INCREMENT PRIMARY KEY,
fk_paciente INT,
nome_medico VARCHAR (100),
especialidade_medico VARCHAR (100),
data_nasc DATE,
telefone_medico VARCHAR (100),
nivel_emergencia VARCHAR (100));

CREATE TABLE problemas(
id_problema INT AUTO_INCREMENT PRIMARY KEY,
fk_po_paciente INT,
tipo_problema VARCHAR (100),
nivel_emergencia VARCHAR (100),
sintomas_paciente VARCHAR(100),
seguimento_problema VARCHAR(100));

ALTER TABLE paciente ADD CONSTRAINT FOREIGN KEY (fk_problema) REFERENCES problemas (id_problema);

ALTER TABLE medico ADD CONSTRAINT FOREIGN KEY (fk_paciente) REFERENCES paciente (id_paciente);

INSERT  INTO medico(nome_medico, especialidade_medico,data_nasc,telefone_medico,nivel_emergencia)
VALUES
("Arthur", "Cirurgião", "1990-10-20","11 951280020", "Profissional"),
("Carlos", "Ortopedista","1984-10-01","11 951280021", "Profissional"),
("Ronaldo", "Cardiologista", "1965-12-12","11 951280029", "Profissional"),
("Marcos", "Neuro-Cirurgião", "1959-10-29","11 951280035", "Profissional"),
("Vitor", "Estudante", "2000-09-27","11 951280044", "Residência");

INSERT  INTO paciente(nome_paciente,data_nasc, documento_paciente,idade_paciente,genero_paciente)
VALUES
("Weslley","2004-09-27", "897.123.999.15", " 19", "M"),
("Tainan","2020-06-12", "897.123.999.05", "05", "M"),
("João","2015-10-10", "897.123.999.10", "10", "M"),
("Matheus","1981-12-01", "897.123.999.90", "43", "M"),
("Luiz","1946-10-20", "897.123.999.21", "78", "M");

INSERT INTO problemas(tipo_problema,nivel_emergencia,sintomas_paciente, seguimento_problema)
VALUES
("Osso quebrado", "Grave", "Forte dor", "Raio-X"),
("Queimadura de 3ºGrau", "Grave", "Pele Necrosada", "Cirurgia"),
("Dengue", "Media", "Dor e manchas corporais", "analgésico"),
("Covid-19", "Media", "Tosse e febre persistente", "Anti-Inflamatório"),
("Hemorragia", "Grave", "Inchaço", "Transfusão");

ALTER TABLE problemas ADD CONSTRAINT FOREIGN KEY (fk_po_paciente) REFERENCES problemas (id_problema);

UPDATE medico SET fk_paciente = 1 WHERE id_medico = 11;
UPDATE medico SET fk_paciente = 2 WHERE id_medico =12;
UPDATE medico SET fk_paciente = 3 WHERE id_medico =13;
UPDATE medico SET fk_paciente = 4 WHERE id_medico =14;
UPDATE medico SET fk_paciente = 5 WHERE id_medico =15;
SELECT * FROM paciente

UPDATE problemas SET fk_po_paciente = 1 WHERE id_problema = 1;
UPDATE problemas SET fk_po_paciente = 2 WHERE id_problema = 2;
UPDATE problemas SET fk_po_paciente = 3 WHERE id_problema = 3;
UPDATE problemas SET fk_po_paciente = 4 WHERE id_problema = 4;
UPDATE problemas SET fk_po_paciente = 5 WHERE id_problema = 5;
SELECT * FROM medico
UPDATE medico SET fk_paciente = 11 WHERE id_medico = 1;
UPDATE medico SET fk_paciente = 12 WHERE id_medico = 2;
UPDATE medico SET fk_paciente = 13 WHERE id_medico = 3;
UPDATE medico SET fk_paciente = 14 WHERE id_medico = 4;
UPDATE medico SET fk_paciente = 15 WHERE id_medico = 5;
SELECT * FROM medico*/
SELECT * FROM problemas

