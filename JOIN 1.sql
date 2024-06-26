/*USE hospital;*/
SELECT 
paciente.id_paciente,
paciente.nome_paciente,
paciente.idade_paciente,
problemas.tipo_problema,
problemas.nivel_emergencia,
problemas.sintomas_paciente

FROM paciente INNER JOIN problemas 
ON paciente.id_paciente = problemas.id_problema


