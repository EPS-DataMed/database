-- Inserindo dados na tabela TB_Usuario
INSERT INTO "TB_Usuario" ("nome") VALUES ('João Silva');
INSERT INTO "TB_Usuario" ("nome") VALUES ('Maria Oliveira');

-- Inserindo dados na tabela TP_Status_Formulario
INSERT INTO "TP_Status_Formulario" ("status_formulario") VALUES ('Em aberto');
INSERT INTO "TP_Status_Formulario" ("status_formulario") VALUES ('Fechado');

-- Inserindo dados na tabela TB_Paciente
INSERT INTO "TB_Paciente" ("id_usuario", "id_status_formulario", "email", "senha", "nome", "dt_nascimento", "criado_em", "formulario")
VALUES (1, 1, 'joao.paciente@example.com', 'senha123', 'João Silva', '1980-01-01', '2024-05-27', 'Formulário preenchido');

INSERT INTO "TB_Paciente" ("id_usuario", "id_status_formulario", "email", "senha", "nome", "dt_nascimento", "criado_em", "formulario")
VALUES (2, 2, 'maria.paciente@example.com', 'senha456', 'Maria Oliveira', '1990-02-02', '2024-05-27', 'Formulário preenchido');

-- Inserindo dados na tabela TB_Medico
INSERT INTO "TB_Medico" ("id_usuario", "crm", "especialidade", "email", "senha", "nome", "dt_nascimento", "criado_em")
VALUES (1, 'CRM123456', 'Cardiologia', 'joao.medico@example.com', 'senha123', 'João Silva', '1980-01-01', '2024-05-27');

INSERT INTO "TB_Medico" ("id_usuario", "crm", "especialidade", "email", "senha", "nome", "dt_nascimento", "criado_em")
VALUES (2, 'CRM654321', 'Neurologia', 'maria.medico@example.com', 'senha456', 'Maria Oliveira', '1990-02-02', '2024-05-27');

-- Inserindo dados na tabela RL_DEPENDENTE
INSERT INTO "RL_DEPENDENTE" ("id_responsavel", "id_dependente") VALUES (1, 2);

-- Inserindo dados na tabela TB_Atende
INSERT INTO "TB_Atende" ("id_medico", "id_paciente") VALUES (1, 1);
INSERT INTO "TB_Atende" ("id_medico", "id_paciente") VALUES (2, 2);

-- Inserindo dados na tabela TB_Exame
INSERT INTO "TB_Exame" ("idExame", "name", "arquivo", "date_adicao", "id_Paciente")
VALUES (1, 'Exame de Sangue', 'exame_sangue.pdf', '2024-05-27', 1);

INSERT INTO "TB_Exame" ("idExame", "name", "arquivo", "date_adicao", "id_Paciente")
VALUES (2, 'Raio X', 'raio_x.pdf', '2024-05-27', 2);

-- Inserindo dados na tabela TB_Dados_Saude
INSERT INTO "TB_Dados_Saude" ("nome") VALUES ('Pressão Arterial');
INSERT INTO "TB_Dados_Saude" ("nome") VALUES ('Colesterol');

-- Inserindo dados na tabela RL_Dados_Saude_Exame
INSERT INTO "RL_Dados_Saude_Exame" ("id_rl_dados_saude_exame", "id_Exame", "id_Dados_Saude")
VALUES (1, 1, 1);

INSERT INTO "RL_Dados_Saude_Exame" ("id_rl_dados_saude_exame", "id_Exame", "id_Dados_Saude")
VALUES (2, 2, 2);
