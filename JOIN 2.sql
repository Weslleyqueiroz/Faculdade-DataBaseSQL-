/*USE hospital*/
SELECT 
medico.nome_medico,
medico.fk_paciente,
medico.especialidade_medico,
medico.nivel_emergencia,
problemas.seguimento_problema

FROM medico INNER JOIN problemas
ON medico.id_medico = problemas.id_problema


