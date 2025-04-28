USE clinica_medica;
select * from pacientes;
select * from medicos;	
show tables;

select * from agendamentos;

-- Listar todos os pacientes que nasceram depois de (01-06-2009)
select nome, data_nascimento, telefone from pacientes 
where data_nascimento > "1990-01-01";

-- LISTAR PARA CONSULTA, NOME DO PACIENTE, DATA E TIPO
select pacientes.nome, agendamentos.data_hora tipo_consulta
from pacientes left join agendamentos on pacientes.id = agendamentos.paciente_id;

-- LISTAR PARA CONSULTA, NOME DO MÉDICO, DATA E TIPO
select medicos.nome, agendamentos.data_hora, agendamentos.tipo_consulta
from medicos left join agendamentos on medicos.id = agendamentos.medico_id;

-- Listar os dados incluindo o nome do paciente e do médico

select pacientes.nome as Paciente, medicos.nome as Médicos, agendamentos.data_hora, agendamentos.tipo_consulta
from pacientes join agendamentos on pacientes.id = agendamentos.paciente_id join medicos on
medicos.id = agendamentos.medico_id;


desc pacientes;