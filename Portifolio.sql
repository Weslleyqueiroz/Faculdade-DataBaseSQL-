/*CREATE DATABASE hospital;
USE hospital;

####CRIAÇÃO DA PRIMEIRA TABELA####
CREATE TABLE paciente(
id_paciente INT AUTO_INCREMENT PRIMARY KEY,
nome_paciente VARCHAR (100),
documento_paciente VARCHAR (100),
nasc_paciente DATE,
fk_problema INT);

####CRIAÇÃO DA SEGUNDA TABELA####
CREATE TABLE medico(
id_medico INT AUTO_INCREMENT PRIMARY KEY,
nome_medico VARCHAR (100),
especialidade_medico VARCHAR (100),
nivel_emergencia VARCHAR (100),
fk_paciente INT );

####CRIAÇÃO DA TERCEIRA TABELA####
CREATE TABLE problemas(
id_problema INT AUTO_INCREMENT PRIMARY KEY,
tipo_problema VARCHAR(100),
sintomas_problema VARCHAR (100),
seguimento_problema VARCHAR (100),
fk_problemas_paciente INT );

####CRIAÇÃO DA PRIMEIRA FK####
ALTER TABLE paciente ADD CONSTRAINT FOREIGN KEY paciente(fk_problema) REFERENCES problemas(id_problema);
####CRIAÇÃO DA SEGUNDA FK####
ALTER TABLE problemas ADD CONSTRAINT FOREIGN KEY problemas (fk_problemas_paciente) REFERENCES paciente(id_paciente);
####CRIAÇÃO DA TERCEIRA FK####
ALTER TABLE medico ADD CONSTRAINT FOREIGN KEY medico (fk_paciente) REFERENCES problemas(id_problema);

####INSERÇÃOO DE DADOS DAS TABELAS CRIADAS####
INSERT INTO problemas
(tipo_problema,sintomas_problema,seguimento_problema)
VALUES
('Osso Quebrado','Exposição do osso ','Cirurgia'),
('Queimadura 3ºGrau','Pele vemelha','Transferência de pele'),
('AVC','hemorragia cerebral ','Cirurgia imediata'),
('Dengue','Manchas brancas ','Repouso e remédio'),
('Corona','Febre','Vacinação');

####INSERÇÃOO DE DADOS DA SEGUNDA TABELA####
INSERT INTO medico
(nome_medico,especialidade_medico,nivel_emergencia)
VALUES
('Raphael','Ortopedista','Médico de emergências'),
('Carlos','Neuro-Cirurgião','Médico cerebral'),
('Ramon','Clinico Geral','Médico para doenças'),
('Vander','Demartologista','Médico de pele'),
('Rodrigo','Clinico Geral','Médico para doenças');

####INSERÇÃOO DE DADOS DA TERCEIRA TABELA####
INSERT INTO paciente
(nome_paciente,documento_paciente,nasc_paciente)
VALUES
('Weslley','452.123.888-21','2004-09-27'),
('Maik','123.122.133-21','2005-01-12'),
('Vinicius','865.999.222-21','2004-02-13'),
('Adriano','888.777.666-21','2001-06-15'),
('Danilo','111.111.111-21','2009-12-13');

####SELECT COM INNER JOIN####
SELECT paciente.nome_paciente,problemas.tipo_problema,problemas.sintomas_problema,problemas.seguimento_problema
FROM paciente INNER JOIN problemas
ON paciente.fk_problema =problemas.id_problema;*/





